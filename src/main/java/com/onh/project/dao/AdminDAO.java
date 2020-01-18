package com.onh.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onh.project.dto.AdminVO;
import com.onh.project.util.DBManager;

@Repository
public class AdminDAO {

	private AdminDAO() {		
	}
	private static AdminDAO instance = new AdminDAO();
	public static AdminDAO getInstance() {
		return instance;
	}
	
	@Autowired
	DBManager dbm;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public AdminVO getAdminMember(String id) {
		AdminVO avo =null;
		String sql="select* from admin where id=?";
		Connection con= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dbm.getConnection();
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				avo = new AdminVO();
				avo.setId(id);
				avo.setPwd(rs.getString("pwd"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(con, pstmt, rs);
		}
		return avo;
	}

	
}
