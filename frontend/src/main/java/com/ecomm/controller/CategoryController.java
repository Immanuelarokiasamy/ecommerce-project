package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;


	@RequestMapping("/Category")
	public String displayCategory(Model m) {
		List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);

		for (Category category : listCategories) {
			System.out.println(category.getCategoryName() + ",");
		}
		return "Category";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addCategory(@RequestParam("catid") String catid,@RequestParam("catname") String catname, @RequestParam("catdesc") String catdesc,
			Model m) {
		Category category = new Category();
		category.setCategoryName(catid);
		category.setCategoryName(catname);
		category.setCategoryDesc(catdesc);

		categoryDAO.addCategory(category);

		List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);
		return "Category";
	}

	@RequestMapping("/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		
		categoryDAO.deleteCategory(category);
		
		List<Category> listCategories=categoryDAO.getCategories();
		m.addAttribute("listCategories",listCategories);
		return "Category";
	}

	@RequestMapping("/updateCategory/{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		
		
		List<Category> listCategories=categoryDAO.getCategories();
		m.addAttribute("listCategories",listCategories);
		m.addAttribute("category",category);
		
		return "updateCategory";
	}
	
	@RequestMapping(value="/updateCategoryDB",method=RequestMethod.POST)
	public String updateCategoryDatabase(@RequestParam("catid") int catId,@RequestParam("catname") String catName,
			@RequestParam("catdesc") String catDesc,Model m)
	{
		Category category=categoryDAO.getCategory(catId);
		category.setCategoryName(catName);
		category.setCategoryDesc(catDesc);
		
		categoryDAO.updateCategory(category);
		
		List<Category> listCategories=categoryDAO.getCategories();
		m.addAttribute("listCategories",listCategories);
		
		return "Category";
	}
}