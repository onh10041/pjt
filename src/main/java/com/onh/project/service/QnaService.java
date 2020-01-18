package com.onh.project.service;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onh.project.dao.QnaDAO;
import com.onh.project.dto.QnaVO;

@Service
public class QnaService {
	
	@Autowired
	QnaDAO qdao;

	public ArrayList<QnaVO> getQna() {
		ArrayList<QnaVO> list = qdao.getQna();
		return list;
	}

	public void QnaWrite(String id, String content, String subject, String pwd) {
		qdao.QnaWrite(id, content, subject, pwd);		
	}

	public ArrayList<QnaVO> getQnaSearch(String subject) {
		ArrayList<QnaVO> list = qdao.getQnaSearch(subject);
		return list;
	}

	public QnaVO getDetail(String qna_num) {
		QnaVO qvo = qdao.getDetail(qna_num);
		return qvo;
	}
	
	public void deleteQna(String num) {
		qdao.deleteQna(num);
		
	}
	
	public void qnaUpdate(String num, String subject, String content) {
		qdao.qnaUpdate(num, subject, content);
	}
}
