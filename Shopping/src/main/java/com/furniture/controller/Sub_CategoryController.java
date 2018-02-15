package com.furniture.controller;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.furniture.model.Category;
import com.furniture.model.Sub_Category;
import com.furniture.service.CategoryService;
import com.furniture.service.Sub_CategoryService;

@Controller
public class Sub_CategoryController {
	@Autowired	(required=true)
	private Sub_CategoryService sub_categoryService;
	@Autowired	(required=true)
	private CategoryService categoryService;

	@RequestMapping(value = "sub_categories", method = RequestMethod.GET)
	public String listSub_Categorys(Model model) {
		model.addAttribute("sub_category", new Sub_Category());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		model.addAttribute("sub_categoryList", this.sub_categoryService.list());
		return "sub_category";
	}
	//For add and update category both
			@RequestMapping(value= "/sub_category/add")
			public String addSub_Category(@Valid @ModelAttribute("sub_category") Sub_Category sub_category,BindingResult result){
				if (result.hasErrors())
				{
					return "sub_category";
				}
				else {
					Category category = categoryService.getByName(sub_category.getCategory().getName());
					categoryService.saveOrUpdate(category);  
					sub_category.setCategory(category);
					sub_category.setCat_id(category.getId());
					sub_categoryService.saveOrUpdate(sub_category);
					
					return "redirect:/sub_categorylist";
				}
				
   }
			@RequestMapping("sub_category/remove/{id}")
		    public String deleteSub_Category(@PathVariable("id") int id,ModelMap model) throws Exception{
				
		       try {
				sub_categoryService.delete(id);
				model.addAttribute("message","Successfully Added");
			} catch (Exception e) {
				model.addAttribute("message",e.getMessage());
				e.printStackTrace();
			}
		       //redirectAttrs.addFlashAttribute(arg0, arg1)
		        return "redirect:/sub_categorylist";
		    }
		 
		    @RequestMapping("sub_category/edit/{id}")
		    public String editSub_Category(@PathVariable("id") int id, Model model){
		    	System.out.println("editSub_Category");
		        model.addAttribute("sub_category", this.sub_categoryService.get(id));
		        model.addAttribute("sub_categoryList", this.sub_categoryService.list());
		        model.addAttribute("categoryList", this.categoryService.list());
		        return "sub_category";
		    }
		    @RequestMapping("/sub_categorylist")
		    public String getList(Model model){
		    	model.addAttribute("sub_categoryList", this.sub_categoryService.list());
		    	return "sub_categorylist";

		    	
		    }


}