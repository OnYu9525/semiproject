package kr.co.ikosmo.mvc.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.ikosmo.mvc.vo.SurveyVO;
import kr.co.ikosmo.mvc.vo.SurveyView2VO;
import kr.co.ikosmo.mvc.dao.SurveyDao;
import kr.co.ikosmo.mvc.service.SurveyService;
import kr.co.ikosmo.mvc.vo.SurveyContentVO;

@Controller
public class SurveyController {
	@Autowired
	private SurveyDao surveyDao;
	@Autowired
	private SurveyService surveyService;
	
	@RequestMapping(value="/surveyForm")
	 public String surform() {
	  return "survey/surveyAddform";
	 }

	@RequestMapping(value = "/addsurvey" , method = RequestMethod.POST)
	public ModelAndView addsurvey(SurveyVO vo,@RequestParam(value = "surveytitle" , required = true)String[] surveytitle,HttpServletRequest request) {
		ModelAndView mav= new ModelAndView("redirect:surveyList");
		String[] surveytitle2= request.getParameterValues("surveytitle");
		//parameter값이 배열로 전송되고, 그것이 실제 값이 존재할때 List저장한다.
		List<SurveyContentVO> list = new ArrayList<SurveyContentVO>();
		int i=0;
		
		for(String e:surveytitle) {
			if(i<vo.getCode()) {
				
				SurveyContentVO sv=new SurveyContentVO();
				sv.setSubtype(String.valueOf((char)('A'+i)));
				sv.setSurveytitle(e);
				list.add(sv);
			}else {
				break;
			}
			
			i++;
		}
		surveyService.addSurvey(vo,list);
		
		
		return mav;
	}
	@RequestMapping(value = "/titleplus",method = RequestMethod.POST)
	public ModelAndView titleplus(int num) {
		ModelAndView mav=new ModelAndView("survey/server/title");
		mav.addObject("num",num);
		return mav;
	}
	
	
	@RequestMapping(value = "/surveyList")
	public ModelAndView surveyList() {
		ModelAndView mav = new ModelAndView("survey/surveyList");
		mav.addObject("list",surveyDao.adminList());
		return mav;
	}
	
	
	
	@GetMapping("/surveyDelete")
	public ModelAndView surveyDelete(int num) {
		ModelAndView mav = new ModelAndView("redirect:surveyList");
		surveyService.surveyDelete(num);
		
		return mav;
	}
}
