package kr.co.ikosmo.mvc.model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.ikosmo.mvc.dao.SurveyDao;
import kr.co.ikosmo.mvc.service.SurveyService;
import kr.co.ikosmo.mvc.vo.SurveyView2VO;

@Controller
public class SurveyClientController {
	@Autowired
	private SurveyDao surveyDao;
	@Autowired
	private SurveyService surveyService;
	
	@RequestMapping(value = "/surveyClient")
	public ModelAndView surveyClient() {
		ModelAndView mav = new ModelAndView("survey/surveyClient");
		mav.addObject("list", surveyDao.Client());
		return mav;
	}
	
	
	
	@RequestMapping(value = "/updateClient" , method = RequestMethod.POST)
	public ModelAndView updateClient(SurveyView2VO vo) {
		ModelAndView mav = new ModelAndView("redirect:surveyClientDetail?num="+vo.getNum());
		System.out.println(vo.getNum()  + "sub type:  "+ vo.getSubtype());
		
		surveyDao.update(vo);
		return mav;
	}

	@RequestMapping(value = "/surveyClientDetail")
	public ModelAndView surveyDetail(@RequestParam(value = "num" , required = true ) int num) {
		ModelAndView mav= new ModelAndView("survey/surveyClientDetail");
		mav.addObject("list",surveyDao.adminDetail(num));
		return mav;
	}
	public ModelAndView delete() {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	

	
	
}
