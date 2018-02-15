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
import com.furniture.model.CartItem;

@Repository
public class CartDAOImpl implements CartDAO{

	public CartDAOImpl() {
		
	}
	@Autowired(required=true)
	private SessionFactory sessionFactory;
	public CartDAOImpl(SessionFactory sessionFactory) {
	
		this.sessionFactory = sessionFactory;
	}
	public Cart getById(int userId) {
		Session session=sessionFactory.openSession();
		Criteria c = session.createCriteria(Cart.class);
		c.add(Restrictions.eq("userId", userId));
		@SuppressWarnings("unchecked")
		List<Cart> cart = c.list();
		session.flush();
		return cart.get(0);

	}

public List<Cart> list() {
		
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listCart;
	}
public void saveOrUpdate(Cart cart) {
	sessionFactory.getCurrentSession().saveOrUpdate(cart);
	
}




}
