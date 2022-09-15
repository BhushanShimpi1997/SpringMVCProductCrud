package productcrud.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrud.model.Product;

@Component
public class ProductDao {
    
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//get all products
	public List<Product> getAllProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.get(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//get single product
	public Product getSingleProduct(int pid) {
		Product single = this.hibernateTemplate.get(Product.class, pid);
		return single;
	}
	

}
