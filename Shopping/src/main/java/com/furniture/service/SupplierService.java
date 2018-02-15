package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.SupplierDAOImpl;
import com.furniture.model.Supplier;

@Service
@Transactional

public class SupplierService {
	 @Autowired(required=true)
	 SupplierDAOImpl supplierDAO;
	 public List<Supplier> list()
	  {
		  return supplierDAO.list();
	  }
	  public void saveOrUpdate(Supplier supplier){
			supplierDAO.saveOrUpdate(supplier);
	  }
	  
	  public void delete(int id) {
			supplierDAO.delete(id);
			
		}
	  
		public Supplier get(int id){
			return supplierDAO.get(id);
		}
		
		public Supplier getByName(String name){
			return supplierDAO.getByName(name);
		}
}
