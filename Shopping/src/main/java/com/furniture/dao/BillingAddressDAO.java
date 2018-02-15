package com.furniture.dao;

import com.furniture.model.BillingAddress;

public interface BillingAddressDAO {
	
	public void saveOrUpdate(BillingAddress billingAddress);

	public void deleteBillingAddress(int billingAddressId);

	public BillingAddress getBillingAddress(int billingAddressId);


}
