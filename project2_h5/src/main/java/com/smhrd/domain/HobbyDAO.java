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
	} // 글 등록
	

	public List<Hobby> selectAllhpostList(int HobbyNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hPostList = null;
		try {
			sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthpost", HobbyNum);

			if (hPostList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return hPostList;
	} // 글 작성 바로 후 게시글 보는 메소드 (로그인)

//	public Hobby justselectOneHobby(BigDecimal h_seq) {
//		SqlSession sqlSession = sqlSessionFactory.openSession();
//		Hobby hobbyPost = null;
//		try {
//			sqlSession.selectOne("com.smhrd.domain.HobbyDAO.selectHobbyJust", h_seq);
//
//			if (hobbyPost != null) {
//				sqlSession.commit();
//			} else {
//				sqlSession.rollback();
//			}
//		} finally {
//			sqlSession.close();
//		}
//		return hobbyPost;
//	} // 글 제목 클릭해서 게시글 보는 메소드 (로그아웃 or 그냥 게시글 볼 때)

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
		return hBoardList; // 글 목록 불러오기 ( 세부 카테고리 글 목록은 밑에 왕창 있음)
	}
	
	public int getLike(int h_seq) {

		SqlSession sqlSession = sqlSessionFactory.openSession();
		int h_like = -1;

		try {

			h_like = (int) sqlSession.selectOne("com.smhrd.domain.HobbyDAO.getLike", h_seq);
			if (h_like != -1) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}

		} finally {
			sqlSession.close();
		}
		return h_like; // 좋아요 수 가져오기

	}

	public int updateLike(int h_seq, String status) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;

		try {
			if(status.equals("like")) {
				System.out.println(h_seq);
				cnt = (int)sqlSession.update("com.smhrd.domain.HobbyDAO.like", h_seq);
			}else {
				cnt = (int)sqlSession.update("com.smhrd.domain.HobbyDAO.dislike", h_seq);
			}
			if(cnt!=0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cnt; // 좋아요 수 수정
	}
	
	public List<Hobby> selecthboardLang() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardLang");
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
	public List<Hobby> selecthboardTravel() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardTravel");
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
	public List<Hobby> selecthboardSports() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardSports");
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
	public List<Hobby> selecthboardRead() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardRead");
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
	public List<Hobby> selecthboardInmac() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardInmac");
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
	public List<Hobby> selecthboardBongsa() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardBongsa");
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
	public List<Hobby> selecthboardCook() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardCook");
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
	public List<Hobby> selecthboardGame() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardGame");
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
	public List<Hobby> selecthboardPicture() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardPicture");
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
	public List<Hobby> selecthboardMake() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardMake");
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
	public List<Hobby> selecthboardCulture() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardCulture");
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
	public List<Hobby> selecthboardCar() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardCar");
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
	public List<Hobby> selecthboardShopping() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardShopping");
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
	public List<Hobby> selecthboardAnimal() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardAnimal");
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
	public List<Hobby> selecthboardMusic() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Hobby> hBoardList = null;
		try {
			hBoardList = sqlSession.selectList("com.smhrd.domain.HobbyDAO.selecthboardMusic");
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
