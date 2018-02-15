package com.furniture.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.furniture.model.OrderDetail;


@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO{
	@Autowired(required=true)
	SessionFactory sessionFactory;

	public OrderDetailDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}

	public void saveOrUpdate(OrderDetail orderDetail) {
		sessionFactory.getCurrentSession().saveOrUpdate(orderDetail);
		
	}

	public void delete(int orderDetailId) {

		OrderDetail orderDetailTodelete = new OrderDetail();
		orderDetailTodelete.setOrderDetailId(orderDetailId);
		sessionFactory.getCurrentSession().delete(orderDetailTodelete);

	}

	public List<OrderDetail> list()
	{
		@SuppressWarnings("unchecked")
		List<OrderDetail> listOrderDetail = (List<OrderDetail>) 
		 sessionFactory.getCurrentSession()
						.createCriteria(OrderDetail.class)
						.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
				
				return listOrderDetail;
	}

	
}
