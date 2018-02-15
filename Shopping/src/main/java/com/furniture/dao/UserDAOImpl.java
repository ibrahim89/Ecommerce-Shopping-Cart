package com.furniture.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furniture.model.Cart;
import com.furniture.model.Category;
import com.furniture.model.User;
@Repository

public class UserDAOImpl implements UserDAO{

	public UserDAOImpl() {
	
	
	}

	@Autowired(required=true)
	private SessionFactory sessionFactory;

	

	public UserDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

public List<User> list() {
		
		@SuppressWarnings("unchecked")
		List<User> listUser = (List<User>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listUser;
	}

	public void saveOrUpdate(User user) {
		
		Session session = sessionFactory.getCurrentSession();
		Cart cart =new Cart();
		
		
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
		
		
		user.setCartId(cart.getCartId());
		session.saveOrUpdate(user);
		
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
		user.setEnabled(true);
		user.setRole("ROLE_USER");
	    
	
		session.flush();
		
	}
	public User getById(Integer id) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("userId", id));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);

	}
	public User getByName(String name) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("username", name));
		@SuppressWarnings("unchecked")
		List<User> user = c.list();
		session.flush();
		return user.get(0);			
	}

	

}
