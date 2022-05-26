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
	
	// id체크 기능
	public boolean idCheck(String user_id) {
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      boolean check = false; //사용할 수 있으면(db에 값이 없다) - true
	                             //사용할 수 없으면(db에 값이 있다) - false
	      try {
	         //email2 <- 이미 있는 이메일 입력한 경우에는 해당하는 이메일이 그대로 반환
	         //       <- 없는 이메일 입력한 경우에는 null 반환
	         String user_id2 = sqlSession.selectOne("com.smhrd.domain.UserDAO.selectId",user_id);
	         
	         if(user_id2!=null) {
	            check = false;
	            sqlSession.commit();
	         }else {
	            check = true;
	            sqlSession.commit();  //select는 commit/rollback 생략해도 됨
	         }
	      }catch(Exception e){
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }
	      return check;
	   }
	
	// nick체크 기능
	public boolean nickCheck(String user_nick) {
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      boolean check = false; //사용할 수 있으면(db에 값이 없다) - true
	                             //사용할 수 없으면(db에 값이 있다) - false
	      try {
	         //email2 <- 이미 있는 이메일 입력한 경우에는 해당하는 이메일이 그대로 반환
	         //       <- 없는 이메일 입력한 경우에는 null 반환
	         String user_nick2 = sqlSession.selectOne("com.smhrd.domain.UserDAO.selectNick",user_nick);
	         
	         if(user_nick2!=null) {
	            check = false;
	            sqlSession.commit();
	         }else {
	            check = true;
	            sqlSession.commit();  //select는 commit/rollback 생략해도 됨
	         }
	      }catch(Exception e){
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }
	      return check;
	   }
	
	public int selectmygrade(String user_nick) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int grade = 0;
		try {
			grade = sqlSession.selectOne("com.smhrd.domain.UserDAO.selectmygrade", user_nick);
			sqlSession.commit();
		} catch(Exception e) {
			e.printStackTrace();
		}
		 return grade;
	}

}
