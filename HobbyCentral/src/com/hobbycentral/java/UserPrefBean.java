package com.hobbycentral.java;

public class UserPrefBean {
	private String location;
	private String activity_type;
	private int physical_strain;
	private int cost;
	private int extra_equipment;
	private int popularity;
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getActivity_type() {
		return activity_type;
	}
	public void setActivity_type(String activityType) {
		activity_type = activityType;
	}
	public int getPhysical_strain() {
		return physical_strain;
	}
	public void setPhysical_strain(int physicalStrain) {
		physical_strain = physicalStrain;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getExtra_equipment() {
		return extra_equipment;
	}
	public void setExtra_equipment(int extraEquipment) {
		extra_equipment = extraEquipment;
	}
	public int getPopularity() {
		return popularity;
	}
	public void setPopularity(int popularity) {
		this.popularity = popularity;
	}

}
