package com.example.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.entity.Account;
import com.example.entity.Brand;
import com.example.entity.Cart;
import com.example.entity.Product;
import com.example.jparepository.AccountRepository;
import com.example.jparepository.CartRepository;
import com.example.jparepository.ProductRepository;
import com.example.service.CartService;
import com.example.service.ProductService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/carts")
public class CartRestController {
	@Autowired
	CartService cartService;

	@Autowired
	CartRepository cartRepository;

	@Autowired
	ProductService productService;

	@Autowired
	AccountRepository userRepository;

	@Autowired
	CartRepository dao;

	@GetMapping()
	public List<Cart> getAll() {
		return cartService.findAll();
	}

	@GetMapping("/cart/{id}")
	public Cart getOne(@PathVariable("id") Integer id) {
		return cartService.findById(id);
	}

	@GetMapping("/product/{id}")
	public Product getProduct(@PathVariable("id") Integer id) {
		return productService.findById(id);
	}

	@GetMapping("/userCart/{id}")
	public List<Cart> findByUserId(@PathVariable("id") Integer id) {
		return cartService.findByUserId(id);
	}

	@PostMapping("/add-to-cart/{ProductId}/{UserId}/{quantity}")
	public ResponseEntity<String> addToCart(@PathVariable("ProductId") Integer productId,
			@PathVariable("UserId") Integer userId, @PathVariable("quantity") int quantity) {

		Product product = productService.findById(productId);
		Account user = userRepository.findById(userId).orElse(null);

		if (product == null || user == null) {
			return ResponseEntity.badRequest().body("Product or user not found!");
		}

		// Kiểm tra xem người dùng đã có giỏ hàng hay chưa
		Cart cart = dao.findByUserAndProduct(user, product);

		if (cart == null) {
			cart = new Cart();
			cart.setUser(user);
			cart.setProduct(product);
			cart.setQuantity(quantity);
			cart.setActive(true);
			cart = cartRepository.save(cart);
		} else {
			cart.setQuantity(cart.getQuantity() + 1);
			cart = cartRepository.save(cart);
		}

		return ResponseEntity.ok("{\"message\": \"Added to cart successfully!\"}");
	}

	@PutMapping("/update-quantity/{id}/{quantity}")
	public ResponseEntity<String> updateQuantity(@PathVariable("id") Integer id,
			@PathVariable("quantity") int quantity) {

		Cart cart = cartService.findById(id);

		if (cart == null) {
			return ResponseEntity.badRequest().body("Cart not found!");
		}

		cart.setQuantity(quantity);
		cart = cartRepository.save(cart);

		return ResponseEntity.ok("{\"message\": \"Quantity updated successfully!\"}");
	}

	

}
