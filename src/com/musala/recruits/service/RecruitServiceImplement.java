package com.musala.recruits.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musala.recruits.dao.RecruitDAO;
import com.musala.recruits.entity.Recruit;

@Service
public class RecruitServiceImplement implements RecruitService {

	@Autowired
	private RecruitDAO recruitDAO;
	
	@Override
	@Transactional
	public List<Recruit> getAllRecruits() {
		
		return recruitDAO.getAllRecruits();
	}

	@Override
	@Transactional
	public void saveRecruit(Recruit theRecruit) {
		
		recruitDAO.saveRecruit(theRecruit);
	}

	@Override
	@Transactional
	public Recruit getRecruit(int id) {

		return recruitDAO.getRecruit(id);
	}

	@Override
	@Transactional
	public void deleteRecruit(int id) {

		recruitDAO.deleteRecruit(id);
	}

}
