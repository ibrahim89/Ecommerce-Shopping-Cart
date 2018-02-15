package com.furniture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.furniture.model.CartItem;
import com.furniture.service.CartItemService;
import com.furniture.service.CartService;
import com.furniture.service.ProductService;
import com.furniture.service.UserService;

@Controller
public class CartItemController {

	@Autowired	(required=true)
	private CartItemService cartItemService;
	@Autowired	(required=true)
	private UserService userService;
	@Autowired	(required=true)
	private CartService cartSerice;
	@Autowired	(required=true)
	private ProductService productService;
	/*@RequestMapping(value = "cartItems", method = RequestMethod.GET)
	
	public String cartItems(Model model){
		model.addAttribute("cartItem", new CartItem());
		model.addAttribute("cartItemList", this.cartItemService.list());
		return"cartItem";
	}*/
	
	@RequestMapping(value="/cartItem/add")
	public String addToCart(@ModelAttribute CartItem cartItem,@RequestParam("id")int id )
	{
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentUser =authentication.getName();
		System.out.println("Current User name is="+currentUser);
	
		
		int user=userService.getByName(currentUser).getUserId();
		System.out.println("user id is="+user);
		int cartId=cartSerice.getById(user).getCartId();
		System.out.println("cart id is="+cartId);
		int price=productService.get(id).getPrice();
		System.out.println("price is="+price);
		cartItem.setCartId(cartId); 
		cartItem.setProductName(productService.get(id).getName());
		cartItem.setProductPrice(productService.get(id).getPrice());
		/*cartItem.setProductId(id);*/
		cartItem.setId(id);
		cartItem.setProductQty(1);
		cartItem.setTotal(price*cartItem.getProductQty());
		cartItemService.saveOrUpdate(cartItem);
		return "redirect:/cartItems";
		}
	@RequestMapping("/cartItems")
	public String cartList (Model model){
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		int userId=userService.getByName(username).getUserId();
		int cartId=cartSerice.getById(userId).getCartId();
		model.addAttribute("cartItemList",this.cartItemService.getlist(cartId));
		
		return "cartItem";
	}
	@RequestMapping("cartItem/remove/{cartItemId}")
    public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,ModelMap model) throws Exception{
		
       try {
		cartItemService.delete(cartItemId);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/cartItems";
    }
	}