package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.UserDAOImpl;
import com.furniture.model.User;
@Service
@Transactional 
public class UserService {
	  @Autowired(required=true)	
	  UserDAOImpl userDAO;
	  
	  public List<User> list()
	  {
		  return userDAO.list();
	  }
	  
	  public void saveOrUpdate(User user){
			userDAO.saveOrUpdate(user);
		 
	  }
	  public User getByName(String name) {
			
			return userDAO.getByName(name);
		}
	  public User getById(Integer id){
			return userDAO.getById(id);
		}
	  public String user(String name)
		{
			return userDAO.getByName(name).getUsername();
		}
	  
}
