package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class GradeDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//평점관리
		public int insertGrade(Grade grade) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;
			try {
				cnt = sqlSession.insert("com.smhrd.domain.SafetyDAO.insertGrade", grade);

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
