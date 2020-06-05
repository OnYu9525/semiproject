package kr.co.ikosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ikosmo.mvc.vo.SurveyContentVO;
import kr.co.ikosmo.mvc.vo.SurveyVO;
import kr.co.ikosmo.mvc.vo.SurveyView2VO;

@Repository
public class SurveyDao {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addSurvey(SurveyVO vo) {
		ss.insert("survey.add",vo);
	}
	
	public void addSurveyContent(List<SurveyContentVO> list) {
		ss.insert("survey.addcontent", list);
	}
	
	public List<SurveyVO> adminList(){
		return ss.selectList("survey.adminlist");
	}
	
	public List<SurveyView2VO> adminDetail(int num) {
		return ss.selectList("survey.adminDetail",num);
	}
	
	public List<SurveyView2VO> Client() {
		return ss.selectList("survey.surClient");
	}
	
	public void update(SurveyView2VO vo) {
		ss.update("survey.surUpdate", vo);
	}
	public void conDel(int num) {
		ss.delete("survey.surConDel", num);
	}
	public void surDel(int num) {
		ss.delete("survey.surDel", num);
	}
}
