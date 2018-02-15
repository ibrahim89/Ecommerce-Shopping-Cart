package com.furniture.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.furniture.model.BillingAddress;
import com.furniture.model.CardDetail;
import com.furniture.model.Cart;
import com.furniture.model.CartItem;
import com.furniture.model.CheckoutDetails;
import com.furniture.model.OrderDetail;
import com.furniture.model.OrderedItems;
import com.furniture.model.Product;
import com.furniture.model.ShippingAddress;
import com.furniture.model.User;
import com.furniture.service.BillingAddressService;
import com.furniture.service.CardDetailService;
import com.furniture.service.CartItemService;
import com.furniture.service.CartService;
import com.furniture.service.OrderDetailService;
import com.furniture.service.OrderedItemsService;
import com.furniture.service.ProductService;
import com.furniture.service.ShippingAddressService;
import com.furniture.service.UserService;


@Component
public class FlowController {
	@Autowired
	private ShippingAddress shippingAddress;
	@Autowired
	private BillingAddress billingAddress;
	@Autowired
	private OrderDetail orderDetail;
	@Autowired
	private OrderedItems orderedItems;
	@Autowired
	private CardDetail cardDetail;
	@Autowired
	private Product product;
	@Autowired
	private ShippingAddressService shippingAddressService;
	@Autowired
	private BillingAddressService billingAddressService;
	@Autowired
	private CardDetailService cardDetailService;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrderedItemsService orderedItemsService;
	@Autowired
	private ProductService productService;
	User user;
	@Autowired
	UserService userService;
	@Autowired
	Cart cart;
	@Autowired
	CartItemService cartItemService;
	@Autowired
	CartService cartService;
	@Autowired
	HttpSession httpSession;
	
	CheckoutDetails checkoutDetails = new CheckoutDetails();

	public CheckoutDetails initFlow() {
		user = userService.getByName(SecurityContextHolder.getContext()
				.getAuthentication().getName());
		
		checkoutDetails.setCart(cartService.getById(user.getUserId()));
		checkoutDetails.setUser(userService.getByName(user.getUsername()));
		return checkoutDetails;
	}

	public String addShippingAddress(CheckoutDetails checkoutDetails, ShippingAddress shippingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext()
				.getAuthentication().getName());

		shippingAddress.setUserId(user.getUserId());
		checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUserId(user.getUserId());
		this.shippingAddress.setLine1(shippingAddress.getLine1());
		this.shippingAddress.setLine2(shippingAddress.getLine2());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setZipCode(shippingAddress.getZipCode());

		return "success";
	}

	public String addBillingAddress(CheckoutDetails checkoutDetails, BillingAddress billingAddress) {
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());
		billingAddress.setUserId(user.getUserId());
		checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUserId(user.getUserId());
		this.billingAddress.setLine1(billingAddress.getLine1());
		this.billingAddress.setLine2(billingAddress.getLine2());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setZipCode(billingAddress.getZipCode());

		return "success";
	}

	public String addCardDetails(CheckoutDetails checkoutDetails, CardDetail cardDetail) {
		System.out.println("Inside the checkout");
		user = userService.getByName(SecurityContextHolder.getContext().getAuthentication().getName());

	
		cardDetail.setUserId(user.getUserId());
		
		cardDetail.setTotalCost(cartService.getById(user.getUserId()).getGrandTotal());
		
		cardDetailService.saveOrUpdate(cardDetail);
		List<CartItem> listOfCartItems = cartItemService.getlist(user.getUserId());
		System.out.println("listOfCartITems="+listOfCartItems);

		listOfCartItems = cartItemService.getlist(user.getUserId());
		
		cart = cartService.getById(user.getUserId());

		
		cart.setCartId(cart.getCartId());
		cart.setUserId(cart.getUserId());
		//cart.setNoOfProducts(listOfCartItems.size());

		shippingAddressService.saveOrUpdate(checkoutDetails.getShippingAddress());
		billingAddressService.saveOrUpdate(checkoutDetails.getBillingAddress());
		cartService.saveOrUpdate(cart);
		
		httpSession.setAttribute("noOfProducts", cart.getNoOfProducts());

		return "success";
	}



}
