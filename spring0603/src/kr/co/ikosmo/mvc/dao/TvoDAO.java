package kr.co.ikosmo.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ikosmo.mvc.vo.TBoardVO;
// DAO�� ������ ������ִ� Annotation  
// kosmo-spring1.xml �� scanning ��� ������̼��̱� ������ , �����������̳ʿ� <bean> ����̵ȴ�.
@Repository
public class TvoDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addTvo(TBoardVO vo) {
		// Spring + Mybatis ����, commit() close() ��������
		ss.insert("tvo.add", vo);
	}
	public List<TBoardVO> getlist(){
		return ss.selectList("tvo.list");
	}
	
	public String getDetailChk(int num) {
		return ss.selectOne("tvo.detailChk", num);
	}
	public TBoardVO getDetail(int num){
		return ss.selectOne("tvo.detail", num);
	}
	
	public void update(TBoardVO vo) {
		ss.update("tvo.update", vo);
		
	}
	public void delete(int num) {
		ss.delete("tvo.delete", num);
	}
	
	

}
