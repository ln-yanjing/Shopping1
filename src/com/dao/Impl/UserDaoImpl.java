package com.dao.Impl;
import java.sql.*;

import com.dao.UserDao;
import com.po.UserBean;

import Utils.ConnDB;

public class UserDaoImpl implements UserDao {
	//private static final Statement JDBCUitl = null;
	private  Connection conn=null;
	 private Statement st=null;
	 private PreparedStatement ps=null;
	  private ResultSet rs=null;
	@Override
	public int login(UserBean user) {
		 int f=0;
		 try {
				conn=ConnDB.getConn();
				st=conn.createStatement();
				String sql;
				sql="select password from tb_user where username='"+user.getUsername()+"'";

				rs=st.executeQuery(sql);
			if(rs.next()) {
				String pwd=rs.getString(1);
				if(pwd.equals(user.getPassword())) {
					f=1;
				}
				else {
					f=0;
				} 
				}else {
					f=0;
				}
			
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return f;
  }

	@Override
	public int reg(UserBean user) throws ClassNotFoundException {
		int f=0;
		try{
			//conn=JDBCUitl.getConnection();
			conn=ConnDB.getConn();
			String sql="insert into tb_user(username,password,age)values(?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setInt(3, user.getAge());
		
		f=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try{
			ps.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return f;

	}
	}
