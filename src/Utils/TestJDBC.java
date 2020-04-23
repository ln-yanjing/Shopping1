package Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;

public class TestJDBC {
		private Connection conn=null;
		private Statement st=null;
		private PreparedStatement ps=null;
		private ResultSet rs=null;
		@Test
		
		public void adduser() throws SQLException{
			try {
				conn=ConnDB.getConn();
				String sql="insert into tb_user(username,password,age,sex,email) valuesinsert into tb_user(username,password,age,sex,email) values(?,?,?,?,?)";
				ps=conn.prepareStatement(sql);
				ps.setString(1, "ln");
				ps.setString(2, "3333");
				ps.setInt(3, 20);
				ps.setString(4, "Ů");
				ps.setString(5,"123@12");
				int b=ps.executeUpdate();
				if(b>0){
					System.out.println("�ɹ���������");
				}
				else{
					System.out.println("ʧ��");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				ConnDB.close();
			}
		}
}