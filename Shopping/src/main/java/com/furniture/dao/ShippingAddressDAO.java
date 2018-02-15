package com.furniture.dao;

import java.util.List;

import com.furniture.model.ShippingAddress;

public interface ShippingAddressDAO {
	public void saveOrUpdate(ShippingAddress shippingAddress);
	
	public void deleteShippingAddress(int shippingAddressId);
	
	public ShippingAddress getShippingAddress(int shippingAddressId);
	public List<ShippingAddress> list();
}
