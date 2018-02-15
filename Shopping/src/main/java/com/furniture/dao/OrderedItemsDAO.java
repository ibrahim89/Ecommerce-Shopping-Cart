package com.furniture.dao;

import java.util.List;

import com.furniture.model.OrderedItems;

public interface OrderedItemsDAO {
	
	public void saveOrUpdate(OrderedItems orderedItems );
	
	public void delete(int orderedItemId);
	
	public List<OrderedItems> list();
}
