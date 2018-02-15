package com.furniture.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.furniture.model.BillingAddress;

@Repository
public class BillingAddressDAOImpl implements BillingAddressDAO{
	@Autowired(required=true)
	SessionFactory sessionFactory;

	public BillingAddressDAOImpl(SessionFactory sessionFactory) {
	
		this.sessionFactory = sessionFactory;
	}

	public void saveOrUpdate(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
		
	}

	public void deleteBillingAddress(int billingAddressId) {

		BillingAddress billingAddressToDelete = new BillingAddress();
		billingAddressToDelete.setBillingAddressId(billingAddressId);
		sessionFactory.getCurrentSession().delete(billingAddressToDelete);

	}

	
		public BillingAddress getBillingAddress(int billingAddressId) {
			//select *from BillingAddress where billingAddressId='101'
			String hql = "from BillingAddress where billingAddressId=" + "'"+ billingAddressId +"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<BillingAddress> listBillingAddress = (List<BillingAddress>) query.list();
			
			if (listBillingAddress != null && !listBillingAddress.isEmpty()) {
				return listBillingAddress.get(0);
			}
			return null;

				}


}
