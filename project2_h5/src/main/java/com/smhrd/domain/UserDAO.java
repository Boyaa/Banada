package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	//회원가입
	public int insertUser(User user) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.UserDAO.insertUser", user);

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

	// 로그인 기능
	public User selectUser(User user) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		User loginUser = null;
		try {
			loginUser = sqlSession.selectOne("com.smhrd.domain.UserDAO.selectUser", user);

			if (loginUser != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return loginUser;
	}

}
