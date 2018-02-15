package com.furniture.dao;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.model.BillingAddress;
import com.furniture.model.ShippingAddress;

@Repository
public class ShippingAddressDAOImpl implements ShippingAddressDAO{
	@Autowired(required=true)
	SessionFactory sessionFactory;

	public ShippingAddressDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}
	
	public void saveOrUpdate(ShippingAddress shippingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}
	
	public List<ShippingAddress> list() {
		
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(ShippingAddress.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listShippingAddress;
	}
	
	public void deleteShippingAddress(int shippingAddressId) {
		
		ShippingAddress shippingAddressToDelete = new ShippingAddress();
		
		shippingAddressToDelete.setShippingAddressId(shippingAddressId);
		
		sessionFactory.getCurrentSession().delete(shippingAddressToDelete);
		
	}

	public ShippingAddress getShippingAddress(int shippingAddressId) {
		//select *from BillingAddress where billingAddressId='101'
		String hql = "from ShippingAddress where shippingAddressId=" + "'"+ shippingAddressId+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<ShippingAddress> listShippingAddress = (List<ShippingAddress>) query.list();
		
		if (listShippingAddress != null && !listShippingAddress.isEmpty()) {
			return listShippingAddress.get(0);
		}
		return null;


	}


}
	

	
