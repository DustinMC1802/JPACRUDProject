package com.skilldistillery.jpafencingclubs.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpafencingclubs.entities.FencingClub;

@Service
@Transactional
public class FencingClubDAOImpl implements FencingClubDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public FencingClub findById(int clubId) {
		return em.find(FencingClub.class, clubId);
	}

}