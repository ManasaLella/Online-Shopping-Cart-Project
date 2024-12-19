package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.MerchantDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao dao;
	@Autowired
	MerchantDao mdao;

	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		Product p = new Product();

		ModelAndView mav = new ModelAndView();
		mav.addObject("productobj", p);
		mav.setViewName("productform");
		return mav;

	}

	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product p, HttpSession session) {
		Merchant m = (Merchant) session.getAttribute("merchantinfo");

		List<Product> product = m.getProduct();
		if (product.size() > 0) {
			product.add(p);
			m.setProduct(product);
		}

		else {
			List<Product> products1 = new ArrayList<Product>();
			products1.add(p);

			m.setProduct(products1);
		}

		
		dao.saveProduct(p);
		mdao.updateMerchant(m);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "saved successfully");
		mav.setViewName("merchantoptions");
		return mav;
	}

	@RequestMapping("/viewallproducts")
	public ModelAndView viewProducts(HttpSession session) {
		Merchant m = (Merchant) session.getAttribute("merchantinfo");
		Merchant merchant = mdao.findMerchantById(m.getId());
		List<Product> products = dao.fetchAllProducts();

		ModelAndView mav = new ModelAndView();
		mav.addObject("productslist", products);
		mav.setViewName("viewallproductstomerchant");
		return mav;

	}

	@RequestMapping("fetchallproducts")
	public ModelAndView fetchAllProducts() {
		List<Product> products = dao.fetchAllProducts();

		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist", products);
		mav.setViewName("displayallproducts");
		return mav;

	}

	@RequestMapping("/delete")
	public ModelAndView deleteProduct(@RequestParam("id") int pid, HttpSession session) {
		Merchant m = (Merchant) session.getAttribute("merchantinfo");
		Merchant merchant=dao.removeProductFromMerchant(m.getId(), pid);

		mdao.updateMerchant(merchant);

		dao.deleteProductById(pid);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect://viewallproducts");
		return mav;

	}
	
	@RequestMapping("/displayproductsbybrand")
	public ModelAndView displayProductsByBrand(ServletRequest req) {
		String brand = req.getParameter("brand");
		List<Product> products = dao.findByBrand(brand);
		ModelAndView mav = new ModelAndView();
		mav.addObject("productslist", products);
		mav.setViewName("displayallproducts");
		return mav;
	}

}
