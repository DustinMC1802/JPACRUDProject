package com.skilldistillery.jpafencingclubs.data;

import java.util.List;

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
	public FencingClub findById(int id) {
		return em.find(FencingClub.class, id);
	}
	@Override
	public FencingClub findByState(String clubState) {
		return em.find(FencingClub.class, clubState);
	}

	@Override
	public List<FencingClub> findAll() {
		String query = "SELECT f FROM FencingClub f";
		return em.createQuery(query, FencingClub.class).getResultList();
	}

	@Override
	public FencingClub create(FencingClub club) {
		em.persist(club);
		return club;
	}

	@Override
	public FencingClub update(int id, FencingClub club) {
		FencingClub updatedClub = em.find(FencingClub.class, id);
		updatedClub.setName(club.getName());
		updatedClub.setCity(club.getCity());
		updatedClub.setState(club.getState());
		updatedClub.setRank(club.getRank());
		updatedClub.setRatedFencers(club.getRatedFencers());
		return null;
	}

	@Override
	public boolean destroy(int id) {
		boolean removeClub = false;
		FencingClub deletedClub = em.find(FencingClub.class, id);
		if (deletedClub != null) {
			em.remove(deletedClub);
			removeClub = !em.contains(deletedClub);
		}
		return removeClub;
	}

}
