package com.furniture.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Entity
@Component
public class CartItem implements Serializable{
	private static final long serialVersionUID = 1L;	

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int cartItemId;
	private int cartId;
	
	private int id;
	private String productName;
	private int productPrice;
	private int productQty;
	private int total;
	@ManyToOne
	@JoinColumn(name="cartId", insertable=false, updatable=false, nullable=false)
	Cart cart;
	@ManyToOne
	@JoinColumn(name="id", insertable=false, updatable=false, nullable=false)
	Product product;
	
	
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Integer getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(Integer cartItemId) {
		this.cartItemId = cartItemId;
	}
	public Integer getCartId() {
		return cartId;
	}
	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductQty() {
		return productQty;
	}
	public void setProductQty(int productQty) {
		this.productQty = productQty;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public String toString(){
		return"{cartItemId : '" +cartItemId + "'," + "cartId : '" + cartId + "'," + "id :'" + id + "'," + "productName : '" + productName + "'," + "productPrice : '" +productPrice + "'," + "productQty : '" +productQty + "'," + "total : '" +total + "'}";
	}
	
	
	

}
