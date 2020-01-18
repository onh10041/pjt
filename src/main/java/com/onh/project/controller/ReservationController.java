package com.onh.project.controller;

import java.sql.Timestamp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onh.project.dto.HotelVO;
import com.onh.project.dto.ReservationVO;
import com.onh.project.dto.CustomerVO;
import com.onh.project.service.HotelService;
import com.onh.project.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService rs;
	
	@Autowired
	HotelService hs;
	
	@RequestMapping("Reservation")
	public String Reservation(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CustomerVO cvo = (CustomerVO)session.getAttribute("LoginUser");
		if(cvo == null) {
			return "Member/Login";
		}
		cvo.getId();
		String phone = request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3");
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		String name = request.getParameter("name");
		String people = request.getParameter("peo");
		String room_class = request.getParameter("r_c");
		String price = request.getParameter("price");
		String coss = request.getParameter("coss_req");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String num = request.getParameter("c_r");
		String start_hour = start+" "+"00:00:00.0";
		System.out.println(start_hour);
		Timestamp chk_in = Timestamp.valueOf(start_hour);
		String end_hour = end+" "+"00:00:00.0";
		Timestamp chk_out = Timestamp.valueOf(end_hour);
		
		ReservationVO rvo = new ReservationVO();
		rvo.setRoom_num(Integer.parseInt(num));
		rvo.setRoom_class(room_class);
		rvo.setPack_num(coss);
		rvo.setChk_in(chk_in);
		rvo.setChk_out(chk_out);
		rvo.setPhone(phone);
		rvo.setEmail(email);
		rvo.setName(name);
		rvo.setPeople_num(Integer.parseInt(people));
		rvo.setPrice(Integer.parseInt(price));
		rvo.setPack_num(coss);
		rvo.setId(cvo.getId());
		int result = rs.reservation(rvo);
		
		if(result == 1) {
			model.addAttribute("reservationVO", rvo);
		}else {
			model.addAttribute("message","예약 실패");
			return "Reservation/Reservation.jsp";			
		}
		
		return "Reservation/ReservationCheck";
	}
	
	@RequestMapping("Res_Info")
	public String Res_Info(Model model, HttpServletRequest request) {
		String start=request.getParameter("start");
		String end=request.getParameter("end");
		String people=request.getParameter("peo");
		String r_class=request.getParameter("room_class");
		String coss=request.getParameter("coss");
		String num=request.getParameter("check_room");
		
		HttpSession session=request.getSession();
		CustomerVO cvo=(CustomerVO)session.getAttribute("LoginUser");
		if(cvo == null) {
			return "Member/Login";
		}
		int price=hs.getRoom(Integer.parseInt(num)).getPrice();
		if(coss.equals("A")) {
			price+=69900;
		}else if(coss.equals("B")) {
			price+=49900;
		}else if(coss.equals("C")) {
			price+=39900;
		}else if(coss.equals("D")) {
			price+=19900;
		}else if(coss.equals("E")) {
			price+=34900;
		}
		System.out.println(num);
		model.addAttribute("check_room", num);
		model.addAttribute("start",start);
		model.addAttribute("end",end);
		model.addAttribute("date",start+"~"+end);
		model.addAttribute("price", price);
		model.addAttribute("people", people);
		model.addAttribute("room_class", r_class);
		model.addAttribute("coss",coss);
		return "Reservation/Reservation";
	}
	
	@RequestMapping("Reservation_Confirm")
	public String Reservation_Confirm(Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		CustomerVO mvo=(CustomerVO)session.getAttribute("LoginUser");
		if(mvo == null) {
			return "Member/Login";
		}else {
			ReservationVO rvo=new ReservationVO();
			rvo=rs.Resconfirm(mvo.getId());
			
			request.setAttribute("reservationVO", rvo);
			return "Reservation/ReservationCheck";
		}
	}
	
	@RequestMapping("Res_Room_Search")
	public String Res_Room_Search(Model model, HttpServletRequest request) {
		String start = request.getParameter("startDate");
		String end = request.getParameter("endDate");
		String people = request.getParameter("people");
		String r_class = request.getParameter("room_class");
		String start_hour=start+" "+"00:00:00.0";
		Timestamp chk_in = Timestamp.valueOf(start_hour);
		String end_hour=end+" "+"00:00:00.0";
		Timestamp chk_out = Timestamp.valueOf(end_hour);
		HttpSession session = request.getSession();
		CustomerVO mvo=(CustomerVO)session.getAttribute("LoginUser");
		if(mvo == null) {
			return "Member/Login";
		}		
		ArrayList<HotelVO> list = hs.searchRes(people, r_class); //클래스, 정원으로 예약가능한 방찾기
		ArrayList<HotelVO> hlist = new ArrayList<HotelVO>(); //jsp에 보낼 최종 리스트
		ArrayList<Integer> num = new ArrayList<Integer>(); //클래스,정원으로 예약가능한 방의 방넘버 저장 리스트		
		
		HotelVO hvo = null;			
		int j = 0;
		while (j < list.size()) {
			num.add(list.get(j).getRoom_num());// 방넘버 저장 리스트에 클래스, 정원으로 예약가능한 방넘버를 add
			j++;
		}		
		ArrayList<Integer> result = rs.check(num, chk_in, chk_out); // 가능한 방넘버 리스트 체크인체크아웃 비교		
		int i = 0;
		int k = 0;
		int cnt = 0;		
		for (i = 0;i < num.size(); i++) {
			for(k = 0;k < result.size(); k++) {
				if(num.get(i-cnt).intValue() == result.get(k).intValue()) {
					num.remove(i-cnt);
					cnt++;
				}
			}
		}		
		i=0;
		while(i<num.size()) {
			hvo = new HotelVO();
			hvo = hs.getRoom(num.get(i));
			hlist.add(hvo);
			i++;
		} 
		System.out.println(hlist.size());
		request.setAttribute("start", start);
		request.setAttribute("end",end);
		request.setAttribute("room_class",r_class);
		request.setAttribute("people",people);
		request.setAttribute("hlist", hlist);	
		return "Reservation/Reservation"; 
	}
	
	@RequestMapping("Reservation_Form")
	public String Reservation_Form(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CustomerVO mvo = (CustomerVO)session.getAttribute("LoginUser");
		if(mvo == null) return "Member/Login";
		else	return "Reservation/Reservation";
	}
}
