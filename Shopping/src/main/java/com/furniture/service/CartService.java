package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.CartDAOImpl;
import com.furniture.model.Cart;
@Service
@Transactional
public class CartService {
	 @Autowired(required=true)
	 CartDAOImpl cartDAO;
	 public List<Cart> list()
	  {
		  return cartDAO.list();
	  }
	 
	 public Cart getById(int userId) {
			return cartDAO.getById(userId);
		}
	public int cart (Integer userId){
		
		return cartDAO.getById(userId).getCartId();
	}
	public void saveOrUpdate(Cart cart) {
		cartDAO.saveOrUpdate(cart);
	}
	
}
