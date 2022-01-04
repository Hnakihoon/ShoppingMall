package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.BoardVO;



public class BoardDAO {
	
		SqlSession sqlSession;
		
		public void setSqlSession(SqlSession sqlSession) {
			this.sqlSession = sqlSession;
		}
		
		
		
		
		
		//메인 리스트
		public List<BoardVO> selectList( HashMap<String, Integer> map ){
			
			List<BoardVO> list = sqlSession.selectList("b.select_info", map);
			return list;
			
		}
		
		public int getRowTotal() {
			
			int count = sqlSession.selectOne("b.countBoardList");
			return count;
		}
		
		
		//게시글 추가		
		public int insert(BoardVO vo) {
			
			int res = sqlSession.insert("b.insert_info" , vo);
			return res;
			
		}
		
		
		
		public BoardVO selectOne(int idx) {
			
			return sqlSession.selectOne("b.getinfo", idx);
		}
		
		
			
		//조회
		public List<BoardVO> select(String b_name) {
			
			List<BoardVO> list = sqlSession.selectList("b.selectone", b_name);
			
			return list;
		}
		
		
			
		
}
