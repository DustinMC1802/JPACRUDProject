package com.skilldistillery.jpafencingclubs.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fencing_club")
public class FencingClub {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private int rank;
	
	private String state;
	
	private String city;
	
	@Column(name = "rated_fencers")
	private int ratedFencers;

	//Default Constructor
	
	public FencingClub() {
		super();
	}

	//Getters and Setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getRatedFencers() {
		return ratedFencers;
	}

	public void setRatedFencers(int ratedFencers) {
		this.ratedFencers = ratedFencers;
	}

	@Override
	public String toString() {
		return "FencingClub [id=" + id + ", name=" + name + ", rank=" + rank + ", state=" + state + ", city=" + city
				+ ", ratedFencers=" + ratedFencers + "]";
	}
	


}
