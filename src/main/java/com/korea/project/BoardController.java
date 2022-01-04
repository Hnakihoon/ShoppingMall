package com.korea.project;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import dao.BoardDAO;
import util.Common;
import util.Paging;
import vo.BoardVO;





@Controller
public class BoardController {
	
	public static final String VIEW_PATH= "/WEB-INF/views/";
	
	BoardDAO board_dao;
	
	public BoardController(BoardDAO board_dao) {
		this.board_dao = board_dao;
	}
	
	
	
	
	//페이징 처리 
	@RequestMapping(value=  "/select.do")
	public String  selectList(Model model ,  Integer page) {
		
		int nowPage = 1;
		
		if( page != null ) {
			nowPage = page;
		}
		
		
		int start = (nowPage - 1) * Common.Board.BLOCKLIST + 1;
		int end = start + Common.Board.BLOCKLIST - 1;
		
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		
		
		
		List<BoardVO> list = null;
		
		list = board_dao.selectList( map );
		
		
		int row_total = board_dao.getRowTotal();
		
	
		String pageMenu = Paging.getPaging(
							"select.do", 
							nowPage, 
							row_total, 
							Common.Board.BLOCKLIST, 
							Common.Board.BLOCKPAGE);
		
		model.addAttribute("list", list);
		model.addAttribute("pageMenu", pageMenu);
		
		
		return VIEW_PATH + "BoardMain.jsp";
		
	}

	
	
	//목록보기 
	@RequestMapping("/return.do")
	public String returnList(Model model , Integer page) {
		
		return VIEW_PATH + "BordMain.jsp";
		
	}
	
	
	
	
	//상세보기 
	@RequestMapping("/info.do")
	public String getinfo(@RequestParam("idx") int idx , Model model) {
		
		BoardVO board_content = board_dao.selectOne(idx);
		model.addAttribute("board_content" , board_content);
		
		return VIEW_PATH + "Board_info.jsp";
	}
	
	
	
	
	//insert form
	@RequestMapping("/insert1.do")
	public String insert1() {

		return VIEW_PATH + "Board_insert.jsp";
		
	}
	
	
	
	//글 추가
	@RequestMapping("/insert2.do")
	public String insert2(Model model , BoardVO vo) {
		
		board_dao.insert(vo);
		return "redirect:select.do";
		
	}
	
	
	//조회 
	@RequestMapping("/List.do")
	public String Listform(@RequestParam("b_name") String b_name ,  Model model) {
		
		List<BoardVO> list = board_dao.select(b_name);
		model.addAttribute("list", list);
		
		
		return VIEW_PATH + "BoardList.jsp";
	}
	
			
		
	
	
	
	
}
