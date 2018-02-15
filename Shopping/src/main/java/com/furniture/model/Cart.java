package com.furniture.model;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Entity
@Component

public class Cart implements Serializable{
	private static final long serialVersionUID = 1L;

		@Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	 	
		private Integer cartId;
		private Integer userId;
		private double grandTotal;
		private int noOfProducts;
		@ElementCollection
		@OneToOne(mappedBy="cart",cascade=CascadeType.ALL)
		@JoinColumn(name="userId",insertable=false,updatable=false,nullable=false)
		private User user;
		
		
	 	
		
		
		public Integer getUserId() {
			return userId;
		}
		public Integer getCartId() {
			return cartId;
		}
		public void setCartId(Integer cartId) {
			this.cartId = cartId;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		public void setUserId(Integer userId) {
			this.userId = userId;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public double getGrandTotal() {
			return grandTotal;
		}
		public void setGrandTotal(double grandTotal) {
			this.grandTotal = grandTotal;
		}
		public int getNoOfProducts() {
			return noOfProducts;
		}
		public void setNoOfProducts(int noOfProducts) {
			this.noOfProducts = noOfProducts;
		}

		 
}