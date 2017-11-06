package com.musala.recruits.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.musala.recruits.entity.Recruit;

@Repository
public class RecruitDAOImplement implements RecruitDAO {

	@Autowired
	public SessionFactory sessionFactory; 
	
	@Override
	public List<Recruit> getAllRecruits() {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Recruit> currentQuery = 
				session.createQuery("from Recruit order by lastName", Recruit.class);
		
		List<Recruit> allRecruits = currentQuery.getResultList();
		
		return allRecruits;
	}

	@Override
	public void saveRecruit(Recruit theRecruit) {

		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(theRecruit);
	}

	@Override
	public Recruit getRecruit(int id) {

		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Recruit.class, id);
	}

	@Override
	public void deleteRecruit(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		
		Query currentQuery = session.createQuery("delete from Recruit where id=:deleteID");
		currentQuery.setParameter("deleteID", id);

		currentQuery.executeUpdate();
	}

}
