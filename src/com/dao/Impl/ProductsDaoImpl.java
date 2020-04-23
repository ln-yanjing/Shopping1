package com.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.ProductsDao;
import com.po.Products;

import Utils.ConnDB;

public class ProductsDaoImpl implements ProductsDao {
	private  Connection conn=null;
	 private Statement st=null;
	 private PreparedStatement ps=null;
	  private ResultSet rs=null;
	@Override
	public int addProducts(Products pd) {
		int f=0;
		try {
			conn=ConnDB.getConn();
			String sql="insert into products(name,price,category,pnum,imgurl,desciption) values(?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, pd.getName());
			ps.setDouble(2, pd.getPrice());
			ps.setString(3, pd.getCategory());
			ps.setInt(4, pd.getPnum());
			ps.setString(5, pd.getImgurl());
			ps.setString(6, pd.getDesciption());
			f=ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnDB.release(ps, conn);
		return f;
	}



	@Override
	public Products findbyid(int id) {
		Products p=new Products();      
		try {
			conn=ConnDB.getConn();
			String sql="select * from products where id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setCategory(rs.getString(4));
				p.setPnum(rs.getInt(5));
				p.setImgurl(rs.getString(6));
				p.setDesciption(rs.getString(7));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}

	@Override
	public int updateproducts(Products p) {
		int f=0;
		try {
			conn=ConnDB.getConn();
			String sql="update products set name=?,price=?,category=?,pnum=?,imgurl=?,desciption=? where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, p.getName());
			ps.setDouble(2, p.getPrice());
			ps.setString(3, p.getCategory());
			ps.setInt(4, p.getPnum());
			ps.setString(5, p.getImgurl());
			ps.setString(6, p.getDesciption());
			ps.setInt(7, p.getId());
			f=ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnDB.release(ps, conn);
		return f;
	}


    @Override
   public List<Products> findAll() {
    	List<Products> list=new ArrayList<Products>();
    	try {
			conn=ConnDB.getConn();
			st=conn.createStatement();
			String sql="select * from products";
			rs=st.executeQuery(sql);
			while(rs.next())
			{
				
				Products p=new Products();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getDouble(3));
				p.setCategory(rs.getString(4));
				p.setPnum(rs.getInt(5));
				p.setImgurl(rs.getString(6));
				p.setDesciption(rs.getString(7));
				list.add(p);
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	ConnDB.release(rs, st, conn);
    	return list;
}



	@Override
	public int delproducts(int id) {
		int f=0;
		try {
			conn=ConnDB.getConn();
			String sql="delete from producys where id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			f=ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ConnDB.release(ps, conn);
		return f;
	}
}