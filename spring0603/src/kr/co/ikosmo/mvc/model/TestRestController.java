package kr.co.ikosmo.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.co.ikosmo.mvc.dao.TvoDAO;
import kr.co.ikosmo.mvc.vo.TBoardVO;

@RestController
public class TestRestController {
	@Autowired
	private TvoDAO tvoDAO;
	
	@RequestMapping(value = "/helloView")
	public String viewMessage() {
		return "Hello";
	}
	
	@RequestMapping(value = "/tboardJsonObject")
	public TBoardVO viewDetail(int num) {
		return tvoDAO.getDetail(num);
	}
	
	@RequestMapping(value = "/tboardJson")
	public List<TBoardVO> getList(){
		return  tvoDAO.getlist();
	}
	
}
