package com.onh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onh.project.dao.CustomerDAO;
import com.onh.project.dto.CustomerVO;

@Service
public class CustomerService {
	
	@Autowired
	CustomerDAO cdao;
	
	public CustomerVO getUser(String id) {
		CustomerVO cvo = cdao.getUser(id);
		return cvo;
	}

	public int IdCheck(String id) {
		int result = cdao.IdCheck(id);
		return result;
	}

	public void JoinUser(CustomerVO cvo) {
		cdao.JoinUser(cvo);
		
	}

	public void updateCustomer(CustomerVO cvo) {
		cdao.updateCustomer(cvo);
	}

}
