package com.onh.project.dto;

import java.sql.Timestamp;

public class ReservationVO {
	private Integer res_num;
	private Timestamp res_date;
	private String useyn;
	private String pack_num;
	private Integer people_num;
	private String name;
	private Integer room_num;
	private String room_class;
	private Timestamp chk_in;
	private Timestamp chk_out;
	private String email;
	private String phone;
	private int price;
	private String id;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Timestamp getChk_in() {
		return chk_in;
	}
	public void setChk_in(Timestamp chk_in) {
		this.chk_in = chk_in;
	}
	public Timestamp getChk_out() {
		return chk_out;
	}
	public void setChk_out(Timestamp chk_out) {
		this.chk_out = chk_out;
	}
	public Integer getRes_num() {
		return res_num;
	}
	public void setRes_num(Integer res_num) {
		this.res_num = res_num;
	}
	public Timestamp getRes_date() {
		return res_date;
	}
	public void setRes_date(Timestamp res_date) {
		this.res_date = res_date;
	}
	public String getUseyn() {
		return useyn;
	}
	public void setUseyn(String useyn) {
		this.useyn = useyn;
	}
	public String getPack_num() {
		return pack_num;
	}
	public void setPack_num(String pack_num) {
		this.pack_num = pack_num;
	}
	public Integer getPeople_num() {
		return people_num;
	}
	public void setPeople_num(Integer people_num) {
		this.people_num = people_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getRoom_num() {
		return room_num;
	}
	public void setRoom_num(Integer romm_num) {
		this.room_num = romm_num;
	}
	public String getRoom_class() {
		return room_class;
	}
	public void setRoom_class(String room_class) {
		this.room_class = room_class;
	}
}
