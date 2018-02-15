package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.OrderedItemsDAOImpl;
import com.furniture.model.OrderedItems;

@Service
@Transactional
public class OrderedItemsService {
	@Autowired(required=true)
	OrderedItemsDAOImpl orderedItemDAO;
	
	
	public void saveOrUpdate(OrderedItems orderedItems) {
		orderedItemDAO.saveOrUpdate(orderedItems);
	}
	
	
	public void delete(int orderedItemId) {
		orderedItemDAO.delete(orderedItemId);
	}
	
	
	public List<OrderedItems> list() {
			return	orderedItemDAO.list();
		
	}
}
