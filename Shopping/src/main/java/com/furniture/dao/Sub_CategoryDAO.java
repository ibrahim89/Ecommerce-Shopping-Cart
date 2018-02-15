package com.furniture.dao;

import java.util.List;

import com.furniture.model.Sub_Category;

public interface Sub_CategoryDAO {
	public void saveOrUpdate(Sub_Category sub_category);
	public void delete (int id);
	public Sub_Category get(int id);
	public Sub_Category getByName(String name);
	public List<Sub_Category> list();
}
