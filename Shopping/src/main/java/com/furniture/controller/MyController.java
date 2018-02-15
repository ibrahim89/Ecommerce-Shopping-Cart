package com.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.furniture.service.CategoryService;
import com.furniture.service.ProductService;
import com.furniture.service.Sub_CategoryService;

@Controller
public class MyController {
	@Autowired	(required=true)
	private CategoryService categoryService;
	@Autowired	(required=true)
	private Sub_CategoryService sub_categoryService;
	@Autowired	(required=true)
	private ProductService productService;


@RequestMapping("/")

public String getHome(Model model){
	
	model.addAttribute("categoryList", this.categoryService.list());
	model.addAttribute("sub_categoryList", this.sub_categoryService.list());
	model.addAttribute("productList", this.productService.list());
	model.addAttribute("productDetails", this.productService.list());
	model.addAttribute("contactus",this.productService.list());
	model.addAttribute("aboutUs", this.productService.list());
	return "home";
}
@RequestMapping("/contactus")

public String getContact(){
		return "contactus";
		}

@RequestMapping("/aboutUs")

public String getAboutUs(){
	
	return "aboutUs";

	
}

}
