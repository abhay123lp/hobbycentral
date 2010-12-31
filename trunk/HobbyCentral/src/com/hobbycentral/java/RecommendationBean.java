package com.hobbycentral.java;

public class RecommendationBean {
	private int hobbyId;
	private String hobby_name;
	private String hobby_description;
	private String imgurl;
	private String category;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public int getHobbyId() {
		return hobbyId;
	}
	public void setHobbyId(int hobbyId) {
		this.hobbyId = hobbyId;
	}
	public String getHobby_name() {
		return hobby_name;
	}
	public void setHobby_name(String hobbyName) {
		hobby_name = hobbyName;
	}
	public String getHobby_description() {
		return hobby_description;
	}
	public void setHobby_description(String hobbyDescription) {
		hobby_description = hobbyDescription;
	}

}
