package com.furniture.dao;

import java.util.List;

import com.furniture.model.User;
 
public interface UserDAO {
	public void saveOrUpdate(User user);
	public User getById(Integer id);
	public User getByName(String name);
	public List<User> list();
}
