package com.onh.project.controller;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onh.project.dto.CustomerVO;
import com.onh.project.dto.QnaVO;
import com.onh.project.service.QnaService;

@Controller
public class QnaController {
	
	@Autowired
	QnaService qs;
	
	@RequestMapping("QA_Update")
	public String QA_Update(Model model, HttpServletRequest request) {
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		String num=request.getParameter("qna_num");		
		qs.qnaUpdate(num,subject,content);		
		return "redirect:/QA_Form";
	}
	
	@RequestMapping("QA_Update_Form")
	public String QA_Update_Form(Model model, HttpServletRequest request) {
		String pwd=request.getParameter("qna_pwd");
		String num=request.getParameter("qna_num");
		model.addAttribute("pwd",pwd);
		model.addAttribute("num",num);
		return "Qna/QA_Update";
	}
	
	@RequestMapping("QA_Delete")
	public String QA_Delete(Model model, HttpServletRequest request) {
		String num=request.getParameter("qna_num");
		qs.deleteQna(num);
		return "redirect:/QA_Form";
	}
	
	@RequestMapping("QA_Detail")
	public String Qna_Detail(Model model, HttpServletRequest request) {
		String qna_num=request.getParameter("qna_num");
		QnaVO qvo=qs.getDetail(qna_num);		
		model.addAttribute("qnaVO",qvo);
		return "Qna/QA_Detail";
	}
	
	@RequestMapping("QA_Search")
	public String Qna_Search(Model model, HttpServletRequest request) {
		String subject=request.getParameter("subject");
		System.out.println(request.getParameter("qna_num")+"ddd");
		HttpSession session=request.getSession();
		CustomerVO cvo=(CustomerVO)session.getAttribute("LoginUser");
		if(cvo == null) {
			return "Login";
		}else {
			ArrayList<QnaVO> list = qs.getQnaSearch(subject);
			model.addAttribute("qnalist", list);
		}
		return "Qna/QA_Form";
	}
	
	@RequestMapping("QA_Write")
	public String Qna_Write(Model model, HttpServletRequest request) {
		String content=request.getParameter("content");
		String subject=request.getParameter("subject");
		String pwd=request.getParameter("qna_pwd");
		HttpSession session=request.getSession();
		CustomerVO cvo=(CustomerVO)session.getAttribute("LoginUser");
		if(cvo == null) {
			return "Member/Login";
		}else { 
			qs.QnaWrite(cvo.getId(),content,subject,pwd);			
		}
		return "redirect:/QA_Form";		
	}
	
	@RequestMapping("QA_Write_Form")
	public String Qna_Write_Form(Model model, HttpServletRequest request) {
		return "Qna/QA_Write";
	}
	
	@RequestMapping("QA_Form")
	public String Qna_Form(Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		CustomerVO cvo=(CustomerVO)session.getAttribute("LoginUser");
		if(cvo == null) {
			return "Member/Login";
		}else {
			ArrayList<QnaVO> list = qs.getQna();
			model.addAttribute("qnalist", list);
		}
		return "Qna/QA_Form";
	}
}
