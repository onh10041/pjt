package com.onh.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onh.project.dto.AdminVO;
import com.onh.project.dto.HotelVO;
import com.onh.project.dto.Paging;
import com.onh.project.service.AdminService;
import com.onh.project.service.HotelService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService as;
	
	@Autowired
	HotelService hs;
	
	
	@RequestMapping("admin_room_detail")
	public String admin_room_detail(Model model, HttpServletRequest request) {
		String room_num = request.getParameter("room_num");
		HotelVO hvo = new HotelVO();
		hvo = hs.getRoom(Integer.parseInt(room_num));
		model.addAttribute("HotelVO", hvo);

		return "/admin/Room/Admin_Room_Detail";
	}
	
	@RequestMapping("admin_room_list")
	public String admin_room_list(Model model, HttpServletRequest request) {
		int pageNo=1;
		if(request.getParameter("pageNo")!=null) {
			pageNo=Integer.parseInt(request.getParameter("pageNo"));
		}
		Paging paging = new Paging();
		paging.setPageNo(pageNo);
		paging.setPageSize(10);
		
		int count = hs.getAllCount();
		paging.setTotalCount(count);
		
		ArrayList<HotelVO> hlist=new ArrayList<HotelVO>();
		hlist = hs.listRoom(paging);
		request.setAttribute("HotelList", hlist);
		request.setAttribute("paging",paging);
		
		return "/admin/Room/Admin_Room";
	}
	@RequestMapping("admin_login")
	public String admin_login(Model model, HttpServletRequest request) {
		String id= request.getParameter("id");
		String pwd =request.getParameter("pwd");
		HttpSession session =request.getSession();		
		
		AdminVO avo = as.getAdminMember(id);
		if(avo!=null) {
			if(avo.getPwd().equals(pwd)) {
				session.setAttribute("loginUser", avo);				
				return "redirect:/admin_room_list";
			}else {
				model.addAttribute("message", "비밀번호가 틀렸습니다.");
				return "admin/AdminLoginForm";
			}
		}else {
			model.addAttribute("message", "아이디가 틀렸습니다.");
			return "admin/AdminLoginForm";
		}				
	}
	
	@RequestMapping("admin")
	public String admin(Model model, HttpServletRequest request) {
		return "admin/AdminLoginForm";
	}
}
