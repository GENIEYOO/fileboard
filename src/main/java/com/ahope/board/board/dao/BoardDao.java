package com.ahope.board.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class BoardDao {

	@Autowired
	private SqlSession query;


	public List<HashMap<String, Object>> selectList() throws Exception {
		return query.selectList("Board.ShowList");
	}

	public void insertBoard(BoardVO param) throws Exception {
		query.insert("Board.boardInsert", param);
	}

	public void updateBoard(BoardVO param) throws Exception {
		query.insert("Board.boardUpdate", param);
	}

	public BoardVO selectBoardOne(String param) throws Exception {
		return query.selectOne("Board.selectBoardOne", param);

	}

	public void deleteBoardOne(String param) throws Exception {
		query.delete("Board.deleteBoardOne", param);
		
	}

}
