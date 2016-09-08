package com.ideyatech.springexercise.entity;

public class Skill {

	private String name;
	private String rating;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "Skill [name=" + name + ", rating=" + rating + "]";
	}
}