package kr.co.ikosmo.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.ikosmo.mvc.dao.MemberDemoDAO;
//Json 또는 커스텀 뷰를 만들때 사용이 가능하다.
@RestController
public class IdChkRestController {
	@Autowired
	private MemberDemoDAO memberDemoDAO;
	// Ajax 서버로 사용하기 가장 좋고 우수한 방법이다.
	@RequestMapping(value = "/idChk" , method =  RequestMethod.POST)
	public int idChk(String id) {
		int res = memberDemoDAO.idChk(id);
	
		return res;
		
	}
}
