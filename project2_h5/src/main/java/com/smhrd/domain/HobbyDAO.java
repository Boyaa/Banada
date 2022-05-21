package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class HobbyDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int insertHobby(Hobby hobby) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int HobbyNum = 0;
		try {
			sqlSession.insert("com.smhrd.domain.HobbyDAO.insertHobby", hobby);
			HobbyNum = sqlSession.selectOne("com.smhrd.domain.HobbyDAO.getHobbyNum");
			if (HobbyNum != 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return HobbyNum;
	}

	public Hobby selectOneHobby(int HobbyNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Hobby hobbyPost = null;
		try {
			sqlSession.selectOne("com.smhrd.domain.HobbyDAO.selectHobby", HobbyNum);

			if (hobbyPost != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return hobbyPost;
	} // 글 작성 바로 후 게시글 보는 메소드 (로그인)

	public Hobby justselectOneHobby(BigDecimal h_seq) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Hobby hobbyPost = null;
		try {
			sqlSession.selectOne("com.smhrd.domain.HobbyDAO.selectHobbyJust", h_seq);

			if (hobbyPost != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return hobbyPost;
	} // 글 제목 클릭해서 게시글 보는 메소드 (로그아웃 or 그냥 게시글 볼 때)

	public List<Hobby> selecthboard() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboard");
			if (hBoardList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return hBoardList;
	}

}
