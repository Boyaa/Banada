package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

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
				cnt = sqlSession.insert("com.smhrd.domain.GradeDAO.insertGrade", grade);

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
		
		public Grade selectgpost(BigDecimal g_seq) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			Grade gPost = null;
			try {
				gPost = sqlSession.selectOne("com.smhrd.domain.GradeDAO.selectgpost", g_seq);
				if(gPost != null) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			return gPost;
		} // 글 정보 객체에 담아옴
		
		
		public List<Grade> selectgboard() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<Grade> gBoardList = null;
			try {
				gBoardList = sqlSession.selectList("com.smhrd.domain.GradeDAO.selectgboard");
				if (gBoardList != null) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}
			} finally {
				sqlSession.close();
			}
			return gBoardList; // 글 목록 불러오기 ( 세부 카테고리 글 목록은 밑에 왕창 있음)
		}
		
		
		public List<Grade> selectmyreview(String user_nick) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<Grade> myreviewList = null;
			System.out.println("넘어온 닉네임 : "+ user_nick);
			try {
				myreviewList = sqlSession.selectList("com.smhrd.domain.GradeDAO.selectmyreview",user_nick);
				if (myreviewList != null) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}
			} finally {
				sqlSession.close();
			}
			return myreviewList; // 글 목록 불러오기 ( 세부 카테고리 글 목록은 밑에 왕창 있음)
		}
		
		
		
		public int updateScore1(String user_nick) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;

			try {
	
				 cnt = sqlSession.update("com.smhrd.domain.GradeDAO.updateScore1", user_nick);
				if(cnt!=0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cnt; // 점수 수정
		}
		public int updateScore2(String user_nick) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;
			
			try {
				
				cnt = sqlSession.update("com.smhrd.domain.GradeDAO.updateScore2", user_nick);
				if(cnt!=0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cnt; // 점수 수정
		}
		public int updateScore4(String user_nick) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;
			
			try {
				
				cnt = sqlSession.update("com.smhrd.domain.GradeDAO.updateScore4", user_nick);
				if(cnt!=0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cnt; // 점수 수정
		}
		public int updateScore5(String user_nick) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int cnt = 0;
			
			try {
				
				cnt = sqlSession.update("com.smhrd.domain.GradeDAO.updateScore5", user_nick);
				if(cnt!=0) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cnt; // 점수 수정
		}
		
		
		
		
		
}
