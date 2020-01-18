package com.onh.project.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onh.project.dto.Paging;
import com.onh.project.dto.ReservationVO;
import com.onh.project.util.DBManager;

@Repository
public class ReservationDAO {

	private ReservationDAO() {		
	}
	private static ReservationDAO instance = new ReservationDAO();
	public static ReservationDAO getInstance() {
		return instance;
	}
	
	@Autowired
	DBManager dbm;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public ArrayList<Integer> check(ArrayList<Integer> num, Timestamp chk_in, Timestamp chk_out) {
		ArrayList<Integer> room_num = new ArrayList<Integer>();
		String sql = "select * from reservation where (chk_in between ? and ? and chk_out between ? and ? or " + 
				"? between chk_in and chk_out and " + 
				"? between chk_in and chk_out)";		
		try {
			conn = dbm.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setTimestamp(1, chk_in);
				pstmt.setTimestamp(2, chk_out);
				pstmt.setTimestamp(3, chk_in);
				pstmt.setTimestamp(4, chk_out);
				pstmt.setTimestamp(5, chk_in);
				pstmt.setTimestamp(6, chk_out);
				rs=pstmt.executeQuery();
				while(rs.next()) {
					System.out.println(rs.getInt("room_num"));
					room_num.add(rs.getInt("room_num"));				
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
			dbm.close(conn, pstmt, rs);
			}
		}		
		return room_num;
	}
	
	
	public int reservation(ReservationVO rvo) {
		int result=0;
		Connection conn=null;
		PreparedStatement pstmt= null;
		String sql="insert into reservation(res_num,name,chk_in,chk_out,package,people_num,room_class"
				+ ",room_num,price,email,phone,id) values(res_seq.nextval,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,rvo.getName());
			pstmt.setTimestamp(2,rvo.getChk_in());
			pstmt.setTimestamp(3,rvo.getChk_out());
			pstmt.setString(4,rvo.getPack_num());
			pstmt.setInt(5, rvo.getPeople_num());
			pstmt.setString(6, rvo.getRoom_class());
			pstmt.setInt(7, rvo.getRoom_num());
			pstmt.setInt(8,rvo.getPrice());
			pstmt.setString(9,rvo.getEmail());
			pstmt.setString(10,rvo.getPhone());
			pstmt.setString(11, rvo.getId());
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt);
		}
		return result;
	}
	
	public ArrayList<Integer> check2() {
		ArrayList<Integer> num=new ArrayList<Integer>();
		String sql="select distinct room_num from reservation";		
		try {
			conn = dbm.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				num.add(rs.getInt("room_num"));
				System.out.println(rs.getInt("room_num"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패");
		}finally {
			dbm.close(conn, pstmt,rs);
		}		
		return num;
	}
	
	public ReservationVO Resconfirm(String id) {
		ReservationVO rvo = null;
		String sql = "select * from reservation where id=?";
		try {
			conn = dbm.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				rvo = new ReservationVO();
				rvo.setChk_in(rs.getTimestamp("chk_in"));
				rvo.setChk_out(rs.getTimestamp("chk_out"));
				rvo.setName(rs.getString("name"));
				rvo.setEmail(rs.getString("email"));
				rvo.setRoom_num(rs.getInt("room_num"));
				rvo.setPeople_num(rs.getInt("people_num"));
				rvo.setRoom_class(rs.getString("room_class"));
				rvo.setPrice(rs.getInt("price"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("실패요");
		} finally {
			dbm.close(conn, pstmt, rs);
		}		
		return rvo;
	}
	
	public int getAllCount() {
		int count = 0;
		String sql = "select count(*) as count from reservation";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = dbm.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}
		return count;
	}
	public ArrayList<ReservationVO> listReservation(Paging paging) {
		ArrayList<ReservationVO> list = new ArrayList<ReservationVO>();
		int startNum = paging.getPageNo();
		String sql = "select * from (select * from(select rownum row_num, reservation.* from reservation";
				sql += " order by res_num desc) where row_num>=?) where row_num<=?";
		ReservationVO rvo=null;
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startNum*10-9);
			pstmt.setInt(2, startNum*10);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				rvo=new ReservationVO();
				rvo.setRes_num(rs.getInt("res_num"));
				rvo.setName(rs.getString("name"));
				rvo.setRes_date(rs.getTimestamp("res_date"));
				rvo.setChk_in(rs.getTimestamp("chk_in"));
				rvo.setChk_out(rs.getTimestamp("chk_out"));
				rvo.setPack_num(rs.getString("package"));
				rvo.setPeople_num(rs.getInt("people_num"));
				rvo.setRoom_num(rs.getInt("room_num"));
				rvo.setRoom_class(rs.getString("room_class"));
				rvo.setPrice(rs.getInt("price"));
				rvo.setEmail(rs.getString("email"));
				rvo.setPhone(rs.getString("phone"));
				rvo.setId(rs.getString("id"));
				list.add(rvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}
		
		return list;
	}
	public ReservationVO getRerservation(String res_num) {
		String sql="select * from reservation where res_num=?";
		ReservationVO rvo = null;
		try {
			conn = dbm.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(res_num));
			rs= pstmt.executeQuery();
			if(rs.next()) {
				rvo = new ReservationVO();
				rvo.setName(rs.getString("name"));
				rvo.setChk_in(rs.getTimestamp("chk_in"));
				rvo.setChk_out(rs.getTimestamp("chk_out"));
				rvo.setEmail(rs.getString("email"));
				rvo.setId(rs.getString("id"));
				rvo.setPack_num(rs.getString("package"));
				rvo.setPeople_num(rs.getInt("people_num"));
				rvo.setPhone(rs.getString("phone"));
				rvo.setPrice(rs.getInt("price"));
				rvo.setRes_date(rs.getTimestamp("res_date"));
				rvo.setRoom_class(rs.getString("room_class"));
				rvo.setRoom_num(rs.getInt("room_num"));
				rvo.setRes_num(rs.getInt("res_num"));
				System.out.println(rs.getInt("res_num")+""+rvo.getRes_num());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}
		return rvo;
	}
		
}
