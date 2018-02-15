package com.furniture.dao;

import java.util.List;

import com.furniture.model.OrderDetail;

public interface OrderDetailDAO {
	public void saveOrUpdate(OrderDetail orderDetail);

	public void delete(int orderDetailId);

	public List<OrderDetail> list();

}
