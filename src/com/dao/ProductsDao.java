package com.dao;
import java.util.List;

//import java.util.List;
import com.po.Products;
public interface ProductsDao {
	
	int addProducts(Products pd);
	int updateproducts(Products p);
	Products findbyid(int id);
	
	List<Products> findAll();
	int delproducts(int id);
}
