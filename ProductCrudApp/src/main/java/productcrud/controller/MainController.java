package productcrud.controller;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrud.dao.ProductDao;
import productcrud.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;

	//show all product
	@RequestMapping(path="/",method = RequestMethod.GET)
	public String home(Model model)
	{
		List<Product> allProducts = this.productDao.getAllProducts();
		model.addAttribute("products",allProducts);
		return "index";
	}
	
	@RequestMapping(path="/add-product")
	public String addProduct() {
		return "add_product_form";
	}
	
	//add product
	@RequestMapping(path="/processproduct",method=RequestMethod.POST)
	public RedirectView processProduct(@ModelAttribute Product product,HttpServletRequest req) {
		RedirectView rd=new RedirectView();
		this.productDao.createProduct(product);
		rd.setUrl(req.getContextPath()+"/");
		return rd;
	}
	
	//delete product
	@RequestMapping(path="/deleteproduct/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest req) 
	{
		this.productDao.deleteProduct(productId);
		RedirectView rd=new RedirectView();
		rd.setUrl(req.getContextPath()+"/");
		return rd;
	}
	
	//update product
	@RequestMapping(path="/updateproduct/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model model) 
	{
		Product singleProduct = this.productDao.getSingleProduct(productId);
		System.out.println(singleProduct);
		model.addAttribute("product",singleProduct);
		return "update_product_form";
	}
	

}
