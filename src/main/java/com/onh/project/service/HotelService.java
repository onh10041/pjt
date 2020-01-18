package com.onh.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onh.project.dao.HotelDAO;
import com.onh.project.dto.HotelVO;
import com.onh.project.dto.Paging;

@Service
public class HotelService {
	
	@Autowired
	HotelDAO hdao;

	public ArrayList<HotelVO> searchRes(String people, String r_class) {
		ArrayList<HotelVO> list = hdao.searchRes(people, r_class);
		return list;
	}

	public HotelVO getRoom(int num) {
		HotelVO hvo = hdao.getRoom(num);
		return hvo;
	}

	public int getAllCount() {
		int count = hdao.getAllCount();		
		return count;
	}

	public ArrayList<HotelVO> listRoom(Paging paging) {
		ArrayList<HotelVO> list = hdao.listRoom(paging);
		return list;
	}
}
