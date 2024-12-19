package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.CartDao;
import com.jsp.shoppingcart_application.dao.CustomerDao;
import com.jsp.shoppingcart_application.dao.OrdersDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Cart;
import com.jsp.shoppingcart_application.dto.Customer;
import com.jsp.shoppingcart_application.dto.Item;
import com.jsp.shoppingcart_application.dto.Orders;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class OrdersController {
	
	@Autowired
	OrdersDao odao;
	
	@Autowired
	ProductDao pdao;
	
	@Autowired
	CustomerDao cdao;
	
	@Autowired
	CartDao cartdao;
	
	
	
	@RequestMapping("/addorder")
	public ModelAndView addOrder() {
		Orders o=new Orders();
		
		ModelAndView mav= new ModelAndView();
		mav.addObject("ordersobj", o);
		mav.setViewName("ordersform");
		return mav;
		
	}
	
	@RequestMapping("/saveorder")
	public ModelAndView saveOrder(@ModelAttribute("ordersobj") Orders o,HttpSession session) {
		Customer customer= (Customer) session.getAttribute("customerinfo");
		
	   Customer c=cdao.findCustomerById(customer.getId());
	   
	   Cart cart=c.getCart();
	   
	 List<Item>  items= cart.getItems();
		
	 List<Item> cartitems= new ArrayList<Item>();
	 List<Item> orderitems=new ArrayList<Item>();
	 
	 for(Item i: items) {
		 Product p=pdao.FindProductById(i.getPid());
		 
		 if(i.getQauantity() < p.getStock()) {
			 orderitems.add(i);
			 
			 p.setStock(p.getStock()-i.getQauantity());
			 pdao.updateProduct(p);
		 }else {
			 cartitems.add(i);
		 }
	 }
		
		double cartTotalPrice=0;
		double orderTotalPrice=0;
		
		for(Item i: cartitems) {
			cartTotalPrice +=i.getPrice();
		}
		
		for(Item i: orderitems) {
			orderTotalPrice +=i.getPrice();
		}
		
		cart.setItems(cartitems);
		cart.setTotalprice(orderTotalPrice);
		
		o.setItems(orderitems);
		o.setTotalprice(orderTotalPrice);
		
        List<Orders> orders=c.getOrders();
        if(orders.size()>0) {
        	orders.add(o);
        	c.setOrders(orders);
        }else {
        	
        	List<Orders> orders1=new ArrayList<Orders>();
        	orders1.add(o);
        	c.setOrders(orders1);
        }
        
       cartdao.updateCart(cart);
       odao.saveOrders(o);
       cdao.updateCustomer(c);
        
        ModelAndView mav=new ModelAndView();
        mav.addObject("msg", "orderplaced successfully");
        mav.setViewName("customerbill");
		return mav;
		
		 
		 
	}

}
