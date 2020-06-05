package kr.co.ikosmo.mvc.model;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.ikosmo.mvc.dao.SurveyDao;
import kr.co.ikosmo.mvc.vo.SurveyView2VO;

@RestController
public class SurveyRestController {
	@Autowired
	private SurveyDao surveyDao;
	
	@RequestMapping(value = "/surveyClientJson")
	public List<SurveyView2VO> getList(int num){
		return surveyDao.adminDetail(num);
	}
	
	
	
	@RequestMapping(value = "/surveyClientDetail2", produces = "application/json; charset=EUC-KR")
	public String surveyDetail2(int num) {
		List<SurveyView2VO> list= surveyDao.adminDetail(num);
		Map<String,Integer> map=new HashMap<>();
		for(SurveyView2VO e :list ) {
			map.put(e.getSurveytitle(), e.getSurveycnt());
		}
		System.out.println("Size:"+list.size());
		String result = null;
		ObjectMapper mapper= new ObjectMapper();
		
		try {
			result=mapper.writeValueAsString(map);
		} catch (JsonGenerationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch (JsonMappingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		System.out.println(result);
		return result;
		
		
	}
}
