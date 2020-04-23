package com.service.Impl;


import java.util.List;

import com.dao.ProductsDao;
import com.dao.Impl.ProductsDaoImpl;
import com.po.Products;
import com.service.ProductsService;

public class ProductsServiceImpl implements ProductsService{

 public int add(Products p) {
		ProductsDao productsDao=new ProductsDaoImpl();
	
		return productsDao.addProducts(p);
	}

public Products findbyid(int id) {
	ProductsDao productsDao=new ProductsDaoImpl();
	return productsDao.findbyid(id);
	
	
}

@Override
public int updateproducts(Products p) {
	ProductsDao productsDao=new ProductsDaoImpl();
	return productsDao.updateproducts(p);
}

@Override
public List<Products> findAll() {
	ProductsDao productsDao=new ProductsDaoImpl();
	return productsDao.findAll();
}

public int deleceproducts(int id) {
	ProductsDao productsDao=new ProductsDaoImpl();
	return productsDao.delproducts(id);
}




}
