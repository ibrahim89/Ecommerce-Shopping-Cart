package com.furniture.dao;

import java.util.List;

import com.furniture.model.Category;

public interface CategoryDAO {
	public void saveOrUpdate(Category category);
	public void delete (int id);
	public Category get(int id);
	public Category getByName(String name);
	public List<Category> list();
	
}
