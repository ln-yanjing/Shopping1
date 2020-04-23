package com.service;

import java.util.List;

import com.po.Products;

public interface ProductsService {
	int add(Products p);
	Products findbyid(int id);
	int updateproducts(Products p);
	
	List<Products> findAll();
	int deleceproducts(int id);
}
