package com.onh.project.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {
	
	@RequestMapping("Dining_Pool")
	public String Dining_Pool(Model model, HttpServletRequest request) {
		return "Dining/Pool";
	}
	@RequestMapping("Dining_Sauna")
	public String Dining_Sauna(Model model, HttpServletRequest request) {
		return "Dining/Sauna";
	}
	@RequestMapping("Dining_Fit")
	public String Dining_Fit(Model model, HttpServletRequest request) {
		return "Dining/Fit";
	}
	@RequestMapping("Dining_Meet")
	public String Dining_Meet(Model model, HttpServletRequest request) {
		return "Dining/Meet";
	}
	@RequestMapping("Dining_Hall")
	public String Dining_Hall(Model model, HttpServletRequest request) {
		return "Dining/Hall";
	}
	@RequestMapping("Dining_Grill")
	public String Dining_Grill(Model model, HttpServletRequest request) {
		return "Dining/Grill";
	}
	@RequestMapping("Dining")
	public String Dining(Model model, HttpServletRequest request) {
		return "Dining/Dining";
	}
	@RequestMapping("Suite")
	public String Suite(Model model, HttpServletRequest request) {
		return "Room/Suite";
	}
	@RequestMapping("Triple")
	public String Triple(Model model, HttpServletRequest request) {
		return "Room/Triple";
	}
	@RequestMapping("Deluxe_Twin")
	public String Deluxe_Twin(Model model, HttpServletRequest request) {
		return "Room/DeluxeTwin";
	}
	@RequestMapping("Standard_Twin")
	public String Standard_Twin(Model model, HttpServletRequest request) {
		return "Room/StandardTwin";
	}
	@RequestMapping("Standard_Double")
	public String Standard_Double(Model model, HttpServletRequest request) {
		return "Room/StandardDouble";
	}	
	@RequestMapping("Business_Double")
	public String Business_Double(Model model, HttpServletRequest request) {
		return "Room/Business_Double";
	}	
	@RequestMapping("Room_Info")
	public String Room_Info(Model model, HttpServletRequest request) {
		return "Room/Room_Info";
	}	
	@RequestMapping("Location")
	public String Location(Model model, HttpServletRequest request) {	
		return "HotelInfo/Location";
	}	
	@RequestMapping("Story")
	public String Story(Model model, HttpServletRequest request) {	
		return "HotelInfo/History";
	}
}
