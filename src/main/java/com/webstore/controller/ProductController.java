package com.webstore.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.webstore.service.ProductService;

/**
 * @author HsetPaing
 *
 */

@Controller
@RequestMapping("/products")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping
	public String list(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		return "products";
	}

	@RequestMapping("/all")
	public ModelAndView allProducts() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("products", productService.getAllProducts());
		mv.setViewName("products");
		return mv;
	}

	/**
	 * 
	 * the @PathVariable annotaton will help us read that variable
	 * 
	 * @param model
	 * @param productCategory
	 * @return products //jsp
	 */
	@RequestMapping("/{category}")
	public String getProductsByCategory(Model model, @PathVariable("category") String productCategory) {
		model.addAttribute("products", productService.getProductsByCategory(productCategory));
		return "products";
	}

	/**
	 * The pathVar atribute from the @MatrixVariable annotaton is used to identfy
	 * the matrix variable segment in the URL
	 * 
	 * @param filterParams
	 *            The filterParams map will have each matrix variable name as key
	 *            and the corresponding list will contain the multple values
	 *            assigned for the matrix variable.
	 * @param model
	 * @return
	 */
	@RequestMapping("/filter/{ByCriteria}")
	public String getProductsByFilter(@MatrixVariable(pathVar = "ByCriteria") Map<String, List<String>> filterParams,
			Model model) {
		model.addAttribute("products", productService.getProductsByFilter(filterParams));
		return "products";
	}

	/**
	 * product details page displaying this information
	 * 
	 * @param productId
	 * @param model
	 * @return
	 */
	@RequestMapping("/product")
	public String getProudctById(@RequestParam("id") String productId, Model model) {
		model.addAttribute("product", productService.getProductById(productId));
		return "product";
	}
}
