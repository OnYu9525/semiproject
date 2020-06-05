package kr.co.ikosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ikosmo.mvc.vo.MemberDemoVO;
import kr.co.ikosmo.mvc.vo.PageVO;

@Repository
public class MemberDemoDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	//입력처리
	public int addMember(MemberDemoVO vo) {
		return ss.insert("member.addmember",vo);
	}
	public int idChk(String id) {
		return ss.selectOne("member.idchk", id);
	}
	
	public int totalCount() { // 전체 데이터를 기준으로 페이지를 나눌것이기 때문에...
		return ss.selectOne("member.totalCount");
	}
	
	
	public List<MemberDemoVO> getList(PageVO vo){ // nowPage등으로 연산인된 start,end
		return ss.selectList("member.list", vo);
	}
	
	
	public List<MemberDemoVO> getSearchList(PageVO vo){ 
		return ss.selectList("member.searchlist", vo);
	}
	
	public int serchTotalCount(PageVO vo) { // 전체 데이터를 기준으로 페이지를 나눌것이기 때문에...
		return ss.selectOne("member.totalCount",vo);
	}
	
	
}
