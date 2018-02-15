package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.ShippingAddressDAOImpl;
import com.furniture.model.ShippingAddress;

@Service
@Transactional
public class ShippingAddressService {
	@Autowired(required=true)
	ShippingAddressDAOImpl shippingAddressDAO;
	
	
	public List<ShippingAddress> list()
	  {
		  return shippingAddressDAO.list();
	  }
	
	
	  public void saveOrUpdate(ShippingAddress shippingAddress){
				shippingAddressDAO.saveOrUpdate(shippingAddress);
	  }
	  
	  public void delete(int shippingAddressId) {
		  		shippingAddressDAO.deleteShippingAddress(shippingAddressId);
			
		}
	  
		public ShippingAddress getShippingAddress(int shippingAddressId){
			return shippingAddressDAO.getShippingAddress(shippingAddressId);
		}

}
