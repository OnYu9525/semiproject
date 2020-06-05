package kr.co.ikosmo.mvc.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.co.ikosmo.mvc.dao.MemberDemoDAO;
//Json �Ǵ� Ŀ���� �並 ���鶧 ����� �����ϴ�.
@RestController
public class IdChkRestController {
	@Autowired
	private MemberDemoDAO memberDemoDAO;
	// Ajax ������ ����ϱ� ���� ���� ����� ����̴�.
	@RequestMapping(value = "/idChk" , method =  RequestMethod.POST)
	public int idChk(String id) {
		int res = memberDemoDAO.idChk(id);
	
		return res;
		
	}
}
