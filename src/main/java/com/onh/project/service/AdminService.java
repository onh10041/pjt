package com.onh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onh.project.dao.AdminDAO;
import com.onh.project.dto.AdminVO;

@Service
public class AdminService {

	@Autowired
	AdminDAO adao;

	public AdminVO getAdminMember(String id) {
		AdminVO avo = adao.getAdminMember(id);
		return avo;
	}
}
