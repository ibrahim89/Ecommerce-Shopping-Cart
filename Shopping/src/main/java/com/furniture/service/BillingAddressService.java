package com.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.BillingAddressDAOImpl;
import com.furniture.model.BillingAddress;

@Service
@Transactional
public class BillingAddressService {
@Autowired(required=true)

BillingAddressDAOImpl billingAddressDAO;

	public void saveOrUpdate(BillingAddress billingAddress)
	{
	billingAddressDAO.saveOrUpdate(billingAddress);
	}

	public void deleteBillingAddress(int billingAddressId)
	{
	billingAddressDAO.deleteBillingAddress(billingAddressId);
	}
	
	public BillingAddress getBillingAddress(int billingAddressId) 
	{
	return billingAddressDAO.getBillingAddress(billingAddressId);
	}
	
	
}

