package com.furniture.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
@Table
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	@ElementCollection(targetClass=Sub_Category.class)
	@OneToMany (mappedBy="category",fetch=FetchType.EAGER)
	private Set<Sub_Category> sub_category;
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	
	@NotEmpty(message="Category Name is compulsory")
	private String name;
	
	@NotEmpty(message="Description is compulsory")
	private String desc;



	public Set<Sub_Category> getSub_category() {
		return sub_category;
	}

	public void setSub_category(Set<Sub_Category> sub_category) {
		this.sub_category = sub_category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
	
	

		public String toString()
	{
		
		return "{id : '" + id + "'," + "name : '" + name + "'," + "desc :'" + desc + "'}";
	}
		
	}
