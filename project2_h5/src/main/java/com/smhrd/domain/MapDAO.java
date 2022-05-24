package com.smhrd.domain;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MapDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public  List<User> selectAddr(){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<User> markerList = null; //sql문통해서 가져온 값들을 User vo에 넣어논걸로 List만들기
		
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
	
public  List<User> selectNick(){
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<User> markerNickList = null; //sql문통해서 가져온 값들을 User vo에 넣어논걸로 List만들기
		
		try {															// mapper에 들어있는ㄴsql실행문 name값
			markerNickList = sqlSession.selectList("com.smhrd.domain.MapDAO.selectNick");
			if(markerNickList != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
		}finally {
			sqlSession.close();
		}return markerNickList;
	}

public  List<User> selectProduct(){
	
	SqlSession sqlSession = sqlSessionFactory.openSession();
	List<User> productList = null; //sql문통해서 가져온 값들을 User vo에 넣어논걸로 List만들기
	
	try {															// mapper에 들어있는ㄴsql실행문 name값
		productList = sqlSession.selectList("com.smhrd.domain.MapDAO.selectProduct");
		if(productList != null) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
	}finally {
		sqlSession.close();
	}return productList;
}
		
	}


