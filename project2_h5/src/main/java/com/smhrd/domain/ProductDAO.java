package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

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
	
	public Product selectpdpost(BigDecimal pd_seq) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Product pdPost = null;
		try {
			pdPost = sqlSession.selectOne("com.smhrd.domain.HobbyDAO.selecthpost", pd_seq);
			if(pdPost != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return pdPost;
	} // 글 정보 객체에 담아옴
	
	public List<Product> selectpdboard() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Product> pdBoardList = null;
		try {
			pdBoardList = sqlSession.selectList("com.smhrd.domain.ProductDAO.selectpdboard");
			if (pdBoardList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} finally {
			sqlSession.close();
		}
		return pdBoardList; // 글 목록 불러오기 ( 세부 카테고리 글 목록은 밑에 왕창 있음)
	}
}
