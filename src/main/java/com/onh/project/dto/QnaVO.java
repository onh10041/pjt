package com.onh.project.dto;

import java.sql.Timestamp;

public class QnaVO {
	private Integer qna_num;
	private String subject;
	private String content;
	private String reply;
	private String rep;
	private Timestamp indate;
	private String qna_pwd;
	private String id;
	
	public Integer getQna_num() {
		return qna_num;
	}
	public void setQna_num(Integer qna_num) {
		this.qna_num = qna_num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getRep() {
		return rep;
	}
	public void setRep(String rep) {
		this.rep = rep;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getQna_pwd() {
		return qna_pwd;
	}
	public void setQna_pwd(String qna_pwd) {
		this.qna_pwd = qna_pwd;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
