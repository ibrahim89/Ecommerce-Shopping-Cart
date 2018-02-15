package com.furniture.dao;

import java.util.List;

import com.furniture.model.CartItem;

public interface CartItemDAO {

	public void saveOrUpdate(CartItem cartItem);
	public void delete (int cartItemId);
	public List<CartItem> list();
	public CartItem getCarItem(Integer cartItemId);
	public List<CartItem> getlist(int userId);
	
	
}
