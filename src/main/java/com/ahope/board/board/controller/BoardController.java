package com.ahope.board.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ahope.board.board.dao.BoardDao;
import com.ahope.board.board.dao.BoardVO;


@Controller
public class BoardController {

	@Autowired
	private BoardDao boardDao;
	
	@RequestMapping(value="/List")
	public String boardList(ModelMap modelMap) throws Exception {
		List<HashMap<String, Object>> BoardList = boardDao.selectList();
		modelMap.addAttribute("BoardList", BoardList);
		return "article/List";
	}
		
	//글 삽입
	
	@RequestMapping(value="/insert")
	public String boardForm(HttpServletRequest request, ModelMap modelMap) throws Exception{
		
		String a_no=request.getParameter("a_no");
		if(a_no!=null){
			BoardVO boardInfo=boardDao.selectBoardOne(a_no);
			modelMap.addAttribute("boardInfo", boardInfo);
		}
		return "article/insert";
	}
	
	
	@RequestMapping(value="boardSave")
	public String boardSave(@ModelAttribute BoardVO boardInfo) throws Exception {
		if(boardInfo.getA_no()==null){
			boardDao.insertBoard(boardInfo);
		}else{
			boardDao.updateBoard(boardInfo);	
		}
		return "redirect:/List";
		
	}
	//글수정	
	
	

	

	
	//글 읽기
	@RequestMapping(value="/boardDetail")
	//http request는 파라미터 때문에 modelmap은 테이블에 붙여줘야 해서 붙인다.
	public String boardRead(HttpServletRequest request, ModelMap modelMap) throws Exception{
		//파라미터 받아오기
		String a_no = request.getParameter("a_no");
		//BoardDAO에 있는 쿼리문 불러오는 메소드를 수행하여 BoardVO객체에 담기
		BoardVO boardInfo=boardDao.selectBoardOne(a_no);
		//모델에 BoardVO 변수를 붙여준다.
		modelMap.addAttribute("boardInfo", boardInfo);
		
		
		return "article/boardDetail";
	}
	
	
	//게시판 삭제
	@RequestMapping(value="/delete")
		public String boardDelete(HttpServletRequest request) throws Exception {
			String a_no=request.getParameter("a_no");
			boardDao.deleteBoardOne(a_no);
			return "redirect:/List";
		
	}

	
	
}
