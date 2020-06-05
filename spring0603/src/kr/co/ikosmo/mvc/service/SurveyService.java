package kr.co.ikosmo.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.ikosmo.mvc.dao.SurveyDao;
import kr.co.ikosmo.mvc.vo.SurveyContentVO;
import kr.co.ikosmo.mvc.vo.SurveyVO;

@Service
@Transactional //Transaction贸府 甫 角青秦林绰 Annotation
public class SurveyService {
	@Autowired
	private SurveyDao surveyDao;
	
	public void addSurvey(SurveyVO vo,List<SurveyContentVO> list) {
		surveyDao.addSurvey(vo);
		surveyDao.addSurveyContent(list);
	}
	/*
	 * public List<SurveyContentVO> surveyClinentList(){ return
	 * surveyDao.surveyView2(); }
	 */
	
	public void surveyDelete(int num) {
		surveyDao.conDel(num);
		surveyDao.surDel(num);
	}
}
