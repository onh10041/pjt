package com.onh.project.dto;

import java.sql.Timestamp;

public class HotelVO {
		private Integer room_num;
		private Integer price;
		private Integer max_people;
		private String image;
		private String content;
		private String res_sta;
		private String room_class;
		
		public Integer getRoom_num() {
			return room_num;
		}
		public void setRoom_num(Integer room_num) {
			this.room_num = room_num;
		}
		public Integer getPrice() {
			return price;
		}
		public void setPrice(Integer price) {
			this.price = price;
		}
		public Integer getMax_people() {
			return max_people;
		}
		public void setMax_people(Integer max_people) {
			this.max_people = max_people;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getRes_sta() {
			return res_sta;
		}
		public void setRes_sta(String res_sta) {
			this.res_sta = res_sta;
		}
		public String getRoom_class() {
			return room_class;
		}
		public void setRoom_class(String room_class) {
			this.room_class = room_class;
		}
		
}
