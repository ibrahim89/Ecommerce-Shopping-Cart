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
import com.furniture.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired	(required=true)
	private CategoryService categoryService;
		
	@RequestMapping(value = "categories", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryService.list());
		return "category";
	}
	//For add and update category both
			@RequestMapping(value= "/category/add")
			public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result){
				if (result.hasErrors())
				{
					return "category";
				}
				else
				{
				categoryService.saveOrUpdate(category);
				
				return "redirect:/categories";
				}
   }
			@RequestMapping("category/remove/{id}")
		    public String deleteCategory(@PathVariable("id") int id,ModelMap model) throws Exception{
				
		       try {
				categoryService.delete(id);
				model.addAttribute("message","Successfully Added");
			} catch (Exception e) {
				model.addAttribute("message",e.getMessage());
				e.printStackTrace();
			}
		       //redirectAttrs.addFlashAttribute(arg0, arg1)
		        return "redirect:/categories";
		    }
		 
		    @RequestMapping("category/edit/{id}")
		    public String editCategory(@PathVariable("id") int id, Model model){
		    	System.out.println("editCategory");
		        model.addAttribute("category", this.categoryService.get(id));
		        model.addAttribute("listCategories", this.categoryService.list());
		        return "category";
		    }


}