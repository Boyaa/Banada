package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ProductDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public int insertProduct (Product product) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt=0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.ProductDAO.insertProduct", product);
			if (cnt>0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		} return cnt;
	}
}
