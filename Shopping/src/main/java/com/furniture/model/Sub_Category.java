package com.furniture.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Sub_Category implements Serializable{
	private static final long serialVersionUID = 1L;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	private int cat_id;
	@NotEmpty(message="Category Name is compulsory")
	private String name;
	@NotEmpty(message="Description is compulsory")
	private String desc;
	@ElementCollection(targetClass=Product.class)
	@OneToMany(mappedBy="sub_category",fetch=FetchType.EAGER)
	private Set<Product> product;
	@ManyToOne
	@JoinColumn(name="cat_id", insertable=false, updatable=false, nullable=false)
	Category category;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCat_id() {
		return cat_id;
	}

	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	public String toString()
	{
		
		return "{id : '" + id + "', "+"cat_id :'" + cat_id + "'," + "name : '" + name + "'," + "desc :'" + desc + "'}";
	}





}
