package com.onh.project.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.onh.project.dto.HotelVO;
import com.onh.project.dto.Paging;
import com.onh.project.util.DBManager;

@Repository
public class HotelDAO {
	
	private HotelDAO() {		
	}
	private static HotelDAO instance = new HotelDAO();
	public static HotelDAO getInstance() {
		return instance;
	}
	
	@Autowired
	DBManager dbm;
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public ArrayList<HotelVO> searchRes(String people, String r_class) {
		ArrayList<HotelVO> list=new ArrayList<HotelVO>();
		HotelVO hvo=null;
		
		String sql="select * from hotel where room_class=? "
				+ "and max_people>=? order by room_num asc";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,r_class);
			pstmt.setInt(2, Integer.parseInt(people));
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				hvo=new HotelVO();
				hvo.setRoom_num(rs.getInt("room_num"));
				hvo.setPrice(rs.getInt("price"));
				hvo.setRes_sta(rs.getString("res_sta"));
				hvo.setMax_people(rs.getInt("max_people"));
				hvo.setImage(rs.getString("image"));
				hvo.setRoom_class(rs.getString("room_class"));
				list.add(hvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public HotelVO getRoom(int num) {
		HotelVO hvo=new HotelVO();
		String sql="select * from hotel where room_num=? ";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				hvo=new HotelVO();
				hvo.setRoom_num(rs.getInt("room_num"));
				hvo.setPrice(rs.getInt("price"));
				hvo.setRes_sta(rs.getString("res_sta"));
				hvo.setMax_people(rs.getInt("max_people"));
				hvo.setImage(rs.getString("image"));
				hvo.setRoom_class(rs.getString("room_class"));
				hvo.setContent(rs.getString("content"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패1");
		}
		return hvo;
	}

	
	public int getAllCount() {
		int count=0;
		String sql="select count(*) as count from hotel";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt("count"));
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}
		return count;
	}
	
	public ArrayList<HotelVO> listRoom(Paging paging) {
		ArrayList<HotelVO> list = new ArrayList<HotelVO>();
		int startNum = paging.getPageNo();
		String sql="select * from (select * from(select rownum row_num, hotel.* from hotel";
		sql+=" order by room_num asc) where row_num>=?) where row_num<=?";
		
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startNum*10-9);
			pstmt.setInt(2, startNum*10);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				HotelVO hvo=new HotelVO();
				hvo.setRoom_num(rs.getInt("room_num"));
				hvo.setPrice(rs.getInt("price"));
				hvo.setRes_sta(rs.getString("res_sta"));
				hvo.setMax_people(rs.getInt("max_people"));
				hvo.setImage(rs.getString("image"));
				hvo.setContent(rs.getString("content"));
				hvo.setRoom_class(rs.getString("room_class"));
				list.add(hvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}		
		return list;
	}
	
	public void updateRoom(HotelVO hvo) {
		String sql="update hotel set room_class=?,max_people=?,price=?,image=?,res_sta=?,content=? where room_num=?";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,hvo.getRoom_class());
			pstmt.setInt(2,hvo.getMax_people());
			pstmt.setInt(3,hvo.getPrice());
			pstmt.setString(4,hvo.getImage());
			pstmt.setString(5,hvo.getRes_sta());
			pstmt.setString(6,hvo.getContent());
			pstmt.setInt(7,hvo.getRoom_num());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt);
		}
		
		
	}
	public void delteRoom(String num) {
		String sql="delete from hotel where room_num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,Integer.parseInt(num));
			System.out.println(num);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패");
		}finally {
			dbm.close(conn, pstmt);
		}
	}
}
