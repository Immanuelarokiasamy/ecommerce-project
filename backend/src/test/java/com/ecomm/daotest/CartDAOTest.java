package com.ecomm.daotest;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Category;

public class CartDAOTest {
	static CartDAO cartDAO;
	@BeforeClass
	public static void executefirst() {
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		cartDAO=(CartDAO)context.getBean("cartDAO");
}
	
	@Test
	public void addcarttest() {
		Cart cart=new Cart();
		cart.setProductId(1);
		cart.setTotal(2000);
		cart.setQuantity(5);
		cart.setProductName("hitman");
		cart.setUsername("kalam");
		cart.setPaymentStatus("NP");
		assertTrue("problem in adding",cartDAO.addCart(cart));
	}
	@Ignore
	@Test
	public void getCartTest()
	{
		assertNotNull("Problem in get Category",cartDAO.getCart(2));
	}
	@Ignore
	@Test
	public void deleteCartTest()
	{
		Cart cart=cartDAO.getCart(110);
		assertTrue("Problem in Deletion:",cartDAO.deleteCart(cart));
	}
	@Ignore
	@Test
	public void updateCartTest()
	{
		Cart cart=cartDAO.getCart(111);
		cart.setQuantity(6);
		assertTrue("Problem in Updation",cartDAO.updateCart(cart));
	}
	@Test
	public void listCartTest()
	{
		List<Cart> listCarts=cartDAO.getCarts("imman");
		assertNotNull("No Cart",listCarts);
		
		for(Cart cart:listCarts)
		{
			System.out.print(cart.getCartId()+" ");
			System.out.print(cart.getProductId()+" ");
			System.out.println(cart.getProductName());
		}
	}


}
