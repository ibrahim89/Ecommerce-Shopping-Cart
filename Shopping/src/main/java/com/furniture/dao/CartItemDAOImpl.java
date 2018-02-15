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
public class CartItemDAOImpl implements CartItemDAO{
	
	
	public CartItemDAOImpl() {
	
	}

	@Autowired(required=true)
	private SessionFactory sessionFactory;

	public CartItemDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	public void saveOrUpdate(CartItem cartItem) {
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
		
	}
public List<CartItem> list() {
		
		@SuppressWarnings("unchecked")
		List<CartItem> listCartItem = (List<CartItem>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(CartItem.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listCartItem;
	}

public CartItem getCarItem(Integer cartItemId) {
	Session session=sessionFactory.openSession();
	Criteria c = session.createCriteria(CartItem.class);
	c.add(Restrictions.eq("cartItemId", cartItemId));
	@SuppressWarnings("unchecked")
	List<CartItem> cartItem = c.list();
	session.flush();
	return cartItem.get(0);
	
}

public List<CartItem> getlist(int cartId) {
	Session session=sessionFactory.openSession();
	Criteria c = session.createCriteria(CartItem.class);
	c.add(Restrictions.eq("cartId", cartId));
	@SuppressWarnings("unchecked")
	List<CartItem> cartItem = (List<CartItem>)(c.list());
	session.flush();
	return cartItem;
	
	
}
public void delete(int cartItemId) {
	CartItem CartItemToDelete = new CartItem();
	CartItemToDelete.setCartItemId(cartItemId);
	sessionFactory.getCurrentSession().delete(CartItemToDelete);
}


}
