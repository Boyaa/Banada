package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MapDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public  List<User> selectAddr(String user_addr){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<User> markerList = null;
		
		try {
			markerList = sqlSession.selectList("com.smhrd.domain.MapDAO.selectAddr",user_addr);
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


