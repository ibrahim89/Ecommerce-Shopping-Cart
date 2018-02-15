package com.furniture.dao;

import java.util.List;

import com.furniture.model.Supplier;

public interface SupplierDAO {
	public void saveOrUpdate(Supplier supplier);
	public void delete(int id);
	public Supplier getByName(String name);
	public List<Supplier> list();
	public Supplier get(int id);
	

}
