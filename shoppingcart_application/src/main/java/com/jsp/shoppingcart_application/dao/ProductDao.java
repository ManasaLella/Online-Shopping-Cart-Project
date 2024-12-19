package com.jsp.shoppingcart_application.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private EntityManagerFactory emf;
	
	@Autowired
	MerchantDao mdao;

	
	public void saveProduct(Product p) {
		
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.persist(p);
		et.commit();	
	}
	
	public Product FindProductById(int id) {
		EntityManager em=emf.createEntityManager();
		
		Product p=em.find(Product.class, id);
		return p;
		
	}
	
	
	public void updateProduct(Product p) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		et.begin();
		em.merge(p);
		et.commit();
	}
	
	public void deleteProductById(int id) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		
		Product p=em.find(Product.class, id);
		
		et.begin();
		em.remove(p);
		et.commit();
	}
	
	public List<Product> fetchAllProducts(){
		EntityManager em=emf.createEntityManager();
		
		Query query=em.createQuery("select p from Product p");
		List<Product> p=query.getResultList();
		return p;	
	}
	
	public List<Product> findByBrand(String brand) {
		EntityManager em = emf.createEntityManager() ;
		Query query = em.createQuery("select p from Product p where p.brand=?1") ;
		query.setParameter(1, brand ) ;
		return query.getResultList() ;
	}
	public Merchant removeProductFromMerchant(int mid,int pid) {
		Merchant m=mdao.findMerchantById(mid);
		
		List<Product> products=m.getProduct();
		
		List<Product> productslist=new ArrayList<>();
		
		for(Product p:products) {
			if(p.getId() !=pid) {
				productslist.add(p);
			}
		}
		
		m.setProduct(productslist);
		return m;
		
	}
	
}
