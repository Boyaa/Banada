package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class SafetyDAO {
SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	//회원가입
	public int insertSafety(Safety safety) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.SafetyDAO.insertSafety", safety);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
}
