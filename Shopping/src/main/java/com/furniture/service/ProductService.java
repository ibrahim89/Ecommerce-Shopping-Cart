package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.ProductDAOImpl;
import com.furniture.model.Product;

@Service
@Transactional

public class ProductService {
	@Autowired(required=true)
	ProductDAOImpl productDAO;
	  public List<Product> list()
	  {
		  return productDAO.list();
	  }
	  public void saveOrUpdate(Product product){
			productDAO.saveOrUpdate(product);
		  
	  }
	  public void delete(int id) {
			productDAO.delete(id);
			
		}
		public Product get(int id){
			return productDAO.get(id);
		}
		public Product getByName(String name){
			return productDAO.getByName(name);
		}
		public Product getView(int id){
			return productDAO.getView(id);
		}
		
}
