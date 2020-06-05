package kr.co.ikosmo.mvc.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.ikosmo.mvc.dao.MemberDemoDAO;
import kr.co.ikosmo.mvc.vo.MemberDemoVO;
import kr.co.ikosmo.mvc.vo.PageVO;

@Controller
public class MemberController {
	@Autowired
	private MemberDemoDAO memberDemoDAO;
	
	@RequestMapping(value = "/memberForm")
	public String memberForm() {
		ModelAndView mav = new ModelAndView();
		
		return "member/memberForm";
	}
	
	@PostMapping("/memberIn")
	public ModelAndView addMember(MemberDemoVO vo) {
		ModelAndView mav= new ModelAndView();
		int res=memberDemoDAO.addMember(vo);
		if(res==1) {
		mav.setViewName("member/success");
		mav.addObject("mid",vo.getId());
		}else {
			mav.setViewName("member/error");
			mav.addObject("mid",vo.getId());
		}
	
		
		return mav;
	}
	
	/*
	 * @PostMapping("/idChk") public String idChk(Model m,String id) {
	 * 
	 * int res = memberDemoDAO.idChk(id);
	 * 
	 * if(res>0) { m.addAttribute("color", "red");
	 * m.addAttribute("result","이미 존재하는 아이디 입니다."); }else { m.addAttribute("color",
	 * "green"); m.addAttribute("result","사용가능한 아이디 입니다."); } return "member/idChk";
	 * }
	 */
	
	@RequestMapping(value = "/memlist")
	public String listSearch(PageVO vo,Model model,@RequestParam(value = "nowPage",required = false, defaultValue = "1") String nowpage
				, @RequestParam(value = "cntPerPage" , required = false , defaultValue = "5") String cntPerPage
			) {
		int total = memberDemoDAO.totalCount();
		vo=new PageVO(total, Integer.parseInt(nowpage), Integer.parseInt(cntPerPage));
		System.out.println("StartPage :"+vo.getStartPage());
		System.out.println("EndPage :"+vo.getEndPage());
		model.addAttribute("paging",vo);
		model.addAttribute("list",memberDemoDAO.getList(vo));
		
		return "member/memberlist";
	}
			
	@RequestMapping(value = "/membersearchlist")	
	public String memberSearchList(Model m , PageVO vo,@RequestParam(value = "nowPage",required = false, defaultValue = "1") String nowpage
			, @RequestParam(value = "cntPerPage" , required = false , defaultValue = "5") String cntPerPage) {
		
		int total = memberDemoDAO.serchTotalCount(vo);
		
		String searchType= vo.getSearchType();
		String searchValue=vo.getSearchValue();
		
		vo = new PageVO(total,Integer.parseInt(nowpage), Integer.parseInt(cntPerPage));
		vo.setSearchType(searchType);
		vo.setSearchValue(searchValue);
		m.addAttribute("list",memberDemoDAO.getSearchList(vo));
		m.addAttribute("paging",vo);
		return "member/memberSearchlist";
	}
}
