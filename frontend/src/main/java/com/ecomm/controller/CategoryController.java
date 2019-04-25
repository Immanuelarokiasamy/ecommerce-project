package com.ecomm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping(value="/addcat") 
	public String category() {
		return "AddCategory";
	}
	@RequestMapping(value="/addCategory",method=RequestMethod.POST)
    public String addCategories(@RequestParam("catname") String name, @RequestParam("catdesc") String desc,Model m)
	{
		Category category = new Category();
		category.setCategoryName(name);
		category.setCategoryDesc(desc);
		categoryDAO.addCategory(category);
		m.addAttribute("addCateg",category);
		return "AddCategory";
	}
}