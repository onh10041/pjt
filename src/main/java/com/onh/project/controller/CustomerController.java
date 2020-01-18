package com.onh.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onh.project.dto.CustomerVO;
import com.onh.project.service.CustomerService;

@Controller
public class CustomerController {
	 
	@Autowired
	CustomerService cs;
	
	@RequestMapping("Member_Update")
	public String Member_Update(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone1")+"-"+request.getParameter("phone2")
							+"-"+request.getParameter("phone3");
		String email = request.getParameter("email")+"@"+request.getParameter("domain");
		CustomerVO mvo = new CustomerVO();
		
		HttpSession session = request.getSession();
		mvo.setId(id);
		mvo.setPwd(pwd);
		mvo.setName(name);
		mvo.setPhone(phone);
		mvo.setEmail(email);
		cs.updateCustomer(mvo);		
		session.setAttribute("LoginUser", mvo);
		
		return "redirect:/";
	}
	
	@RequestMapping("Member_Update_Form")
	public String Member_Update_Form(Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		CustomerVO mvo=(CustomerVO)session.getAttribute("LoginUser");
		if(mvo == null) {
			return "Member/Login";
		}else {
			return "Member/memberUpdate";
		}
	}
	
	@RequestMapping("Logout")
	public String Logout(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("Join")
	public String Join(Model model, HttpServletRequest request) {
		CustomerVO mvo = new CustomerVO();
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setName(request.getParameter("name"));
		mvo.setPhone(request.getParameter("phone"));
		mvo.setEmail(request.getParameter("email"));
		cs.JoinUser(mvo);
		return "Member/Join/Join_3";
	}
	
	@RequestMapping("id_check_form")
	public String id_check_form(Model model, HttpServletRequest request) {
		String id=request.getParameter("id");
		int result = cs.IdCheck(id);
		model.addAttribute("message", result);
		model.addAttribute("id", id);
		return "Member/Join/IdCheck";
	}
	
	@RequestMapping("Join_Form_2")
	public String Join_Form_2(Model model, HttpServletRequest request) {
		return "Member/Join/Join_2";
	}
	
	@RequestMapping("Join_Form")
	public String Join_Form(Model model, HttpServletRequest request) {
		return "Member/Join/Join_1";
	}
	
	@RequestMapping("Login")
	public String Login(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		CustomerVO cvo = cs.getUser(id);
		HttpSession session = request.getSession();
		if(cvo != null) {
			if(cvo.getPwd().equals(pwd)) {
				session.setAttribute("LoginUser", cvo);
				return "redirect:/";
			}else {
				model.addAttribute("message", "비밀번호가 일치하지 않습니다");
				return "Member/Login";
			}
		}else {
			model.addAttribute("message", "ID가 존재하지 않습니다");
			return "Member/Login";
		}
	}
	
	@RequestMapping("Login_Form")
	public String Login_Form(Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		CustomerVO mvo=(CustomerVO)session.getAttribute("LoginUser");
		if(mvo == null) {
			return "Member/Login";
		}else {
			return "redirect:/";
		}
	}
	
	@RequestMapping("/")
	public String Main(Model model, HttpServletRequest request) {		
		return "Main";
	}
}
