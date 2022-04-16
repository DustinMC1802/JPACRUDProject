package com.skilldistillery.jpafencingclubs.data;

import java.util.List;

import com.skilldistillery.jpafencingclubs.entities.FencingClub;

public interface FencingClubDAO {
	FencingClub findById(int clubId);
	List<FencingClub> findAll();

}
