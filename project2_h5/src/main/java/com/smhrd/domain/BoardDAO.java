package com.smhrd.domain;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
																									//댓글들 정보를 가지고와서 list로 묶어온거까지 반환받았고 최종적으로 이 메소드를 호출햇을때 이 list를 반환할겁니다 -이걸 출력해주기
	//리스트안에 댓글들에 대한 정보를 커밋하는 vo를 객체로 생성한 다음에 그거를 리스트로 묶어가지고 반환을 할거다 
	public List<Comm> selectAllComm(int h_seq){//selectallcomm 메소드는 호출을할때 게시물번호를 넣어줄거에요. 
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Comm> commList = null;
		
		try {					//그래서 얘는 리스트가 나올 수 있기때문에 selectList를 호출			//그리고 이때 게시물번호 하나를 보내주기
			commList = sqlSession.selectList("com.smhrd.domain.BoardDAO.selectAllComm",h_seq);
			if(commList != null) {				//mapper경로지정		//얘는 sql문메소드에 대한 id값 가져오는!
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}													//우리가 댓글들 정보 가지고 와서 리스트로 묶어온거까지 반환을받았고
					
		}finally {
			sqlSession.close();
		}
		return commList;	//최종적으로 이메소드를 호출했을때 commList를 반환할거다  -> 얘를 보드메인가서 출력해주기
	}
	public int addComment(Comm comm) { //에드커맨트 메소드 호출 그때는 댓글 삽입할 정보를 넣어주기 comm
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int commNum = 0;  // 반환값 ( insert는 거의cnt인데 왜 ? ) 현재 삽입된 댓글의 번호 - 시퀀스라서 자동생성이라 )
		try {										//삽입할때는 addcomment라는 insert문 실행할거고, 삽입할때 줘야할 정보
			sqlSession.insert("com.smhrd.domain.BoardDAO.addComment", comm);  //댓글삽입 sql
			commNum = sqlSession.selectOne("com.smhrd.domain.BoardDAO.getCommNum");	//삽입후 삽입된 댓글의 시퀀스 가지고오는거  - 이걸가지고와야만 나중에 삭제를 할수이승ㅁ
			
			if(commNum!=0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}finally {
			sqlSession.close();
		}
		return commNum;
	}
	
	public int deleteComment(int commNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.domain.BoardDAO.deleteComment", commNum);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}finally {
			sqlSession.close();
		}
		return cnt;
	}

}
