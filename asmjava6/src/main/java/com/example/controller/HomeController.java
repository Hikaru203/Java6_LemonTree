package com.example.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.entity.Account;
import com.example.entity.Cart;
import com.example.entity.Favorite;
import com.example.entity.Product;
import com.example.jparepository.AccountRepository;
import com.example.jparepository.FavoriteRepository;
import com.example.jparepository.ProductRepository;
import com.example.service.CartService;
import com.example.service.CookieService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class HomeController {
	@Autowired
	ProductRepository daoProduct;
	@Autowired
	CartService cartService;
	@Autowired
	AccountRepository daoAccount;
	@Autowired
	CookieService cookieService;
	@Autowired
	FavoriteRepository favoriteRepository;

	@RequestMapping(value = "/client/detail/{id}")
	public String detail(Model model, @PathVariable("id") int id) {
		Product item = daoProduct.findById(id).get();
		model.addAttribute("itemDetail", item);
		return "detail";
	}

	@RequestMapping("/client/login")
	public String showLoginFrom(Model model) {
		model.addAttribute("user", new Account());
		return "login";
	}

	@RequestMapping("/client/denied")
	public String error(Model model) {
		System.out.println("chú m k có tuổi");
		return "redirect:/client/index";
	}

	@RequestMapping("/client/signin")
	public String showsinupFrom(Model model) {
		model.addAttribute("user", new Account());
		return "dangky";
	}

	@RequestMapping("/client/index")
	public String index(Model model, @RequestParam("cid") Optional<Integer> cid) {
		System.out.println(cid);
		if (cid.isPresent()) {

			List<Product> page = daoProduct.findByCategory(cid.get());
			model.addAttribute("products", page);
		} else {
			List<Product> page = daoProduct.findAll();
			model.addAttribute("products", page);
		}
		// List<Cart> cartItem=cartService.findAll();
		// model.addAttribute("cartItem",cartItem);
		return "index";
	}

	@RequestMapping("/client/cart")
	public String cart(Model model) {
		List<Cart> list = cartService.findAll();
		model.addAttribute("carts", list);
		return "cart";
	}

	@RequestMapping(value = "/client/login/success")
	public String success(Model model, HttpServletResponse response) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && authentication.getPrincipal() instanceof UserDetails) {
			UserDetails userDetails = (UserDetails) authentication.getPrincipal();

			String username = userDetails.getUsername();

			Account account = daoAccount.findByUserName(username);

			if (account != null) {
				String cleanedUsername = account.getUserName().replaceAll("\\s", "");
				cookieService.setCookie(response, "username", cleanedUsername, 3600);
				System.out.println("Đăng nhập thành công");
			} else {
				System.out.println("Không tìm thấy tài khoản");
			}

			return "redirect:/client/index";
		} else {
			return "redirect:/client/index";
		}
	}

	@RequestMapping(value = "/client/signin/error")
	public String loi(Model model) {
		model.addAttribute("lỗi", "Sai thông tin đăng nhập, Vui lòng nhập lại");
		return "login";
	}

	@RequestMapping(value = "/client/social/success")
	public String loginGG(Model model) {
		System.out.println("logingg");
		return "redirect:/client/index";
	}

	@RequestMapping(value = "/client/favorite")
	public String favorite(Model model) {
		List<Favorite> list = favoriteRepository.findAll();
		model.addAttribute("items", list);
		return "favoriteProductPage";
	}

}
