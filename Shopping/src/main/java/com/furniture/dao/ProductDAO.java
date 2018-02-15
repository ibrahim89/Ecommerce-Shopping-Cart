package com.furniture.dao;

import java.util.List;

import com.furniture.model.Product;

public interface ProductDAO {
	public void saveOrUpdate(Product product);
	public void delete (int id);
	public Product get(int id);
	public Product getByName(String name);
	public List<Product> list();
	public Product getView(int id);
}
