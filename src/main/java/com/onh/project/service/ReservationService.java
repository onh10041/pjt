package com.onh.project.service;

import java.sql.Timestamp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onh.project.dao.ReservationDAO;
import com.onh.project.dto.ReservationVO;

@Service
public class ReservationService {
	
	@Autowired
	ReservationDAO rdao;

	public ArrayList<Integer> check(ArrayList<Integer> num, Timestamp chk_in, Timestamp chk_out) {
		ArrayList<Integer> list = rdao.check(num, chk_in, chk_out);
		return list;
	}

	public ReservationVO Resconfirm(String id) {
		ReservationVO rvo = rdao.Resconfirm(id);
		return rvo;
	}

	public int reservation(ReservationVO rvo) {
		int result = rdao.reservation(rvo);
		return result;
	}
	
	
}
