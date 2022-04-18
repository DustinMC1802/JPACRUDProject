package com.skilldistillery.jpafencingclubs.data;

import java.util.List;

import com.skilldistillery.jpafencingclubs.entities.FencingClub;

public interface FencingClubDAO {
	public FencingClub findById(int clubId);
	public List<FencingClub> findByState(String clubState);
	public List<FencingClub> findAll();
	public FencingClub create(FencingClub club);
	public FencingClub update(int id, FencingClub club);
	public boolean destroy(int id);

}
