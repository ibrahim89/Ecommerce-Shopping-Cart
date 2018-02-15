package com.furniture.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
@Entity
public class Product implements Serializable{
	private static final long serialVersionUID = 1L;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private  int id;
	private int sub_id;
	private int supplier_id;
	
	private String name;
	
	private String desc;
	
	private String qty;
	
	private int price;
	@ManyToOne
	@JoinColumn(name="sub_id", insertable=false, updatable=false, nullable=false)
	Sub_Category sub_category;
	@ManyToOne
	@JoinColumn(name="supplier_id", insertable=false, updatable=false, nullable=false)
	Supplier supplier;
	@Transient
	private MultipartFile image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}
	public int getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Sub_Category getSub_category() {
		return sub_category;
	}
	public void setSub_category(Sub_Category sub_category) {
		this.sub_category = sub_category;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}

/*	public String toString()
	{
		
		
		return "{id : '" + id + "', " + "sub_id :'" + sub_id + "'," + "supplier_id : '" + supplier_id + "'," + "name :'" + name + "'," + "desc :'" + desc +"'," + "qty :'," + qty +  "'," + "price :'" + price + "'}";
	}
*/	public String toString()
	{
		
		return "{id : '" + id + "'," + "sub_id : '" + sub_id +"', "+"supplier_id : '" + supplier_id + "'," + "name :'" + name + "'," + "desc :'" + desc + "',"+"qty :'," + qty +  "'," + "price :'" + price + "'," + "image :'resources/img/" +id + ".jpg'}";
		
	}


}
