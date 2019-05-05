package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Product;
@Controller
public class CartController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;

	@RequestMapping(value = "/addCart/{productId}",method = RequestMethod.POST)
	public String addCart(@PathVariable("productId") int proid,Model m) {
		Product product=productDAO.getProduct(proid);
		m.addAttribute("product",product);
		String username="imman";
		
		Cart cart=new Cart();
		cart.setProductId(proid);
		cart.setQuantity(1);
		cart.setUsername(username);
		cart.setProductName(product.getProductName());
		cart.setPaymentStatus("NP");
		cart.setTotal(product.getPrice());
		cartDAO.addCart(cart);
		List<Cart> listCarts=cartDAO.getCarts(username);
		m.addAttribute("listCarts", listCarts);
		m.addAttribute("cart",cart);
 
		return "Cart";
	}
}