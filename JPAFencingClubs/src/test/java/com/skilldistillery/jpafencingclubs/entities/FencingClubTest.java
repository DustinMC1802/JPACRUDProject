package com.skilldistillery.jpafencingclubs.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class FencingClubTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private FencingClub club;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFencingClubs");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		club = em.find(FencingClub.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		club = null;
	}

	@Test
	void test_FencingClub_entity_mapping() {
		assertNotNull(club);
		assertEquals("Bluegrass Fencers Club", club.getName());
	}

}
