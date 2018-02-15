package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.OrderDetailDAOImpl;
import com.furniture.model.OrderDetail;

@Service
@Transactional
public class OrderDetailService {
	@Autowired(required=true)
	OrderDetailDAOImpl orderDetailDAO;
	
	public void saveOrUpdate(OrderDetail orderDetail) 
	{
	orderDetailDAO.saveOrUpdate(orderDetail);	
	}
	public void delete(int orderDetailId) 
	{
		orderDetailDAO.delete(orderDetailId);
	}
	public List<OrderDetail> list()
	{
	return	orderDetailDAO.list();
	}
}
