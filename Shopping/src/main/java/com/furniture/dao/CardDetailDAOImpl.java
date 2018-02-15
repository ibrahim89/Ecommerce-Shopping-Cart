package com.furniture.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furniture.model.CardDetail;

@Repository
public class CardDetailDAOImpl implements CardDetailDAO{
	@Autowired(required=true)
	private SessionFactory sessionFactory;

	public CardDetailDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	public void saveOrUpdate(CardDetail cardDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(cardDetail);
		
	}
	
	

}
