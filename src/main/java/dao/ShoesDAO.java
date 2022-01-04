package dao;

import org.apache.ibatis.session.SqlSession;

public class ShoesDAO {
	
	SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
}
