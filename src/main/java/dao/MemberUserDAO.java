package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MemberUserVO;

public class MemberUserDAO {

	SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 전체 조회
	public List<MemberUserVO> selectList( HashMap<String, Integer> map ) {
		
		List<MemberUserVO> list = sqlSession.selectList("m.member_list", map);
		return list;
		
	}
	
	// 한 개 조회
	public MemberUserVO selectOne(String id) {
		
		MemberUserVO vo = sqlSession.selectOne("m.member_one", id);
		
		return vo;
		
	}
	
	// 추가
	public int insert(MemberUserVO vo) {
		
		int res = sqlSession.insert("m.member_insert", vo);
		
		return res;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
