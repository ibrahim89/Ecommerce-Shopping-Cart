package com.furniture.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.furniture.model.Supplier;

public class SupplierDAOImpl implements SupplierDAO {
	@Autowired(required=true)
	private SessionFactory sessionFactory;

	public SupplierDAOImpl() {
		
	}

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}

	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		 List<Supplier> list=sessionFactory.getCurrentSession().createCriteria(Supplier.class)
 		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        return list;
		}
	public void delete(int id) {
		Supplier SupplierToDelete = new Supplier();
		SupplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(SupplierToDelete);
	}
public Supplier get(int id) {
		
		//select *from Supplier where id='101'
		String hql = "from Supplier where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>) query.list();
		
		if (listSupplier != null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		
		return null;
	}

public Supplier getByName(String name) {
	
	String hql = "from Supplier where name=" + "'"+ name +"'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	@SuppressWarnings("unchecked")
	List<Supplier> listSupplier = (List<Supplier>) query.list();
	
	if (listSupplier != null && !listSupplier.isEmpty()) {
		return listSupplier.get(0);
	}
	
	return null;
}

}
