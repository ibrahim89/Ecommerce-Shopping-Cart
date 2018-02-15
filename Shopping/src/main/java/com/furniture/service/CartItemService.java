package com.furniture.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.CartItemDAO;
import com.furniture.model.CartItem;

@Service
@Transactional

public class CartItemService {
	  @Autowired(required=true)
	  CartItemDAO cartItemDAO;
	  public List<CartItem>list()
	  {
		  return cartItemDAO.list();
	  }
	  public void saveOrUpdate(CartItem cartItem){
		  
		  cartItemDAO.saveOrUpdate(cartItem);
	  }
	  public CartItem getCarItem(Integer cartItemId) {
		return  cartItemDAO.getCarItem(cartItemId);
	  }
	  public List<CartItem> getlist(int cartId) {
		  return cartItemDAO.getlist(cartId);
	  }
	  public List<CartItem> list(int cartId) 
	  {
		  return cartItemDAO.list();
	  }
	  public void delete(int cartItemId) {
		  cartItemDAO.delete(cartItemId);
	  }
	 
}
