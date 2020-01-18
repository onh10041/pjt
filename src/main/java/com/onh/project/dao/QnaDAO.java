package com.onh.project.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onh.project.dto.QnaVO;
import com.onh.project.util.DBManager;

@Repository
public class QnaDAO {
	
	@Autowired
	DBManager dbm;

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<QnaVO> getQna() {
		ArrayList<QnaVO> list = new ArrayList<QnaVO>();
		String sql = "select * from qna order by qna_num desc";
		try {
			conn = dbm.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				QnaVO qvo=new QnaVO();
				qvo.setQna_num(rs.getInt("qna_num"));
				qvo.setSubject(rs.getString("subject"));
				qvo.setContent(rs.getString("content"));
				qvo.setReply(rs.getString("reply"));
				qvo.setId(rs.getString("id"));
				qvo.setRep(rs.getString("rep"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setQna_pwd(rs.getString("qna_pwd"));
				list.add(qvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(conn, pstmt, rs);
		}
		return list;
	}

	public void QnaWrite(String id, String content, String subject, String pwd) {
		String sql="insert into qna(qna_num,subject,content,id,qna_pwd)"
				+ " values(qna_seq.nextval,?,?,?,?)";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.setString(3, id);
			pstmt.setString(4, pwd);
			System.out.println(subject+" "+content+" "+id+" "+pwd);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("수정 실패");
		}finally {
			dbm.close(conn, pstmt);
		}
	}

	public ArrayList<QnaVO> getQnaSearch(String subject) {
		ArrayList<QnaVO> list=new ArrayList<QnaVO>();
		String sql="select * from qna where subject like '%'||?||'%'";		
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, subject);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				QnaVO qvo=new QnaVO();
				qvo.setQna_num(rs.getInt("qna_num"));
				qvo.setSubject(rs.getString("subject"));
				qvo.setContent(rs.getString("content"));
				qvo.setReply(rs.getString("reply"));
				qvo.setId(rs.getString("id"));
				qvo.setRep(rs.getString("rep"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setQna_pwd(rs.getString("qna_pwd"));
				list.add(qvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbm.close(conn, pstmt, rs);
		}		
		return list;
	}

	public QnaVO getDetail(String qna_num) {
		QnaVO qvo=new QnaVO();
		String sql="select * from qna where qna_num=?";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(qna_num));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				qvo.setQna_num(rs.getInt("qna_num"));
				qvo.setSubject(rs.getString("subject"));
				qvo.setContent(rs.getString("content"));
				qvo.setReply(rs.getString("reply"));
				qvo.setId(rs.getString("id"));
				qvo.setRep(rs.getString("rep"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setQna_pwd(rs.getString("qna_pwd"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbm.close(conn, pstmt, rs);
		}
		return qvo;
	}

	public void deleteQna(String num) {
		String sql="delete from qna where qna_num=?";
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,Integer.parseInt(num));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("삭제 실패");
		}finally {
			dbm.close(conn, pstmt);
		}		
	}

	public void qnaUpdate(String num, String subject, String content) {
		String sql="update qna set subject=?, content=? where qna_num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		try {
			conn=dbm.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.setInt(3, Integer.parseInt(num));
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("수정 실패");
		}finally {
			dbm.close(conn, pstmt);
		}		
	}
		
}

