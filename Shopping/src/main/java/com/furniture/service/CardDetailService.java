package com.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.CardDetailDAOImpl;
import com.furniture.model.CardDetail;

@Service
@Transactional

public class CardDetailService {
	 @Autowired(required=true)
	 CardDetailDAOImpl cardDetailDAO;
	 
	 public void saveOrUpdate(CardDetail cardDetail) {
		 cardDetailDAO.saveOrUpdate(cardDetail);
	 }
	 
}
