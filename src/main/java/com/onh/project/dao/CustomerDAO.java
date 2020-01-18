package com.onh.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.onh.project.dto.CustomerVO;
import com.onh.project.util.DBManager;

@Repository
public class CustomerDAO {
	
	private CustomerDAO() {		
	}
	private static CustomerDAO instance = new CustomerDAO();
	public static CustomerDAO getInstance() {
		return instance;
	}
	
	@Autowired
	DBManager dbm;
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public CustomerVO getUser(String id) {
		CustomerVO cvo = null;		
		String sql = "select * from customer where id=?";		
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cvo = new CustomerVO();
				cvo.setId(id);
				cvo.setPwd(rs.getString("pwd"));
				cvo.setName(rs.getString("name"));				
				cvo.setPhone(rs.getString("phone"));
				cvo.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(con, pstmt, rs);
		}
		return cvo;
	}

	public int IdCheck(String id) {
		int result = 0;
		String sql="select * from customer where id=?";
		ArrayList<CustomerVO> list = new ArrayList<CustomerVO>();		
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {				
				CustomerVO cvo = new CustomerVO();
				cvo.setId(id);
				cvo.setPwd(rs.getString("pwd"));
				cvo.setName(rs.getString("name"));				
				cvo.setPhone(rs.getString("phone"));
				cvo.setEmail(rs.getString("email"));
				list.add(cvo);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(con, pstmt, rs);
		}				
		if(list.size() == 0) return result = 1;
		else result = 0;
		return result;
	}

	public void JoinUser(CustomerVO cvo) {
		String sql="insert into customer values(?,?,?,?,?)";
		
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			cvo.getId();
			cvo.getPwd();
			cvo.getName();
			cvo.getPhone();
			cvo.getEmail();
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(con, pstmt);
		}			
	}

	public void updateCustomer(CustomerVO cvo) {
		String sql = "update customer set pwd=?, name=?,  phone=?, email=? where id=?";
		
		try {
			con = dbm.getConnection();
			pstmt = con.prepareStatement(sql);
			cvo.getPwd();
			cvo.getName();
			cvo.getPhone();
			cvo.getEmail();
			cvo.getId();	
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(con, pstmt);
		}			
	}
	
	
}
