package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MapDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public  List<User> selectAddr(){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<User> markerList = null;
		
		try {															// mapper에 들어있는ㄴsql실행문 name값
			markerList = sqlSession.selectList("com.smhrd.domain.MapDAO.selectAddr");
			if(markerList != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
		}finally {
			sqlSession.close();
		}return markerList;
	}
		
	}


