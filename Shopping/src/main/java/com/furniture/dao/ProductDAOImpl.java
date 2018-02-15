package com.furniture.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furniture.model.Product;
@Repository
public class ProductDAOImpl implements ProductDAO{
	public ProductDAOImpl() {
	}

	@Autowired(required=true)
	private SessionFactory sessionFactory;


	public ProductDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Product> list() {
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listProduct;
	}
	public  void saveOrUpdate(Product product) {
		
			sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	

	public void delete(int id) {
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
	}


	
	public Product get(int id) {
		
		//select *from Product where id='101'
		String hql = "from Product where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	public Product getByName(String name) {
		// select *from Product where name=''
		String hql ="from Product where name =" + "'"+ name +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	public Product getView(int id) {
		        //select *from Product where id='101';
				String hql = "from Product where id=" + "'"+ id +"'";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
				
				@SuppressWarnings("unchecked")
				List<Product> listProduct = (List<Product>) query.list();
				
				if (listProduct != null && !listProduct.isEmpty()) {
					return listProduct.get(0);
				}
				
				return null;

		
	}
}
