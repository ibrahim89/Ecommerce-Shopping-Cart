package com.furniture.dao;

import java.util.List;

import com.furniture.model.Cart;



public interface CartDAO {
	public Cart getById(int cartId);
	public List<Cart> list();
	void saveOrUpdate(Cart cart);

	
}
