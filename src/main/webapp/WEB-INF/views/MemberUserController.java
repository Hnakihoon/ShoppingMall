package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.MemberUserDAO;
import util.Common;
import vo.MemberUserVO;

@Controller
public class MemberUserController {

	MemberUserDAO member_dao;

	public void setMember_dao(MemberUserDAO member_dao) {
		this.member_dao = member_dao;
	}

	@Autowired
	HttpServletRequest request;

	// 메인
	@RequestMapping( value = {"/", "/main.do"} )
	public String main( Model model ) {

		return Common.Board.VIEW_PATH + "main_list.jsp";

	}

	// 회원 가입
	@RequestMapping( "/register.do" )
	public String test( Model model ) {

		return Common.Board.VIEW_PATH + "register.jsp";

	}

	// 아이디 중복 확인
	@RequestMapping("/check.do")
	@ResponseBody
	public String check( String id ) {

		MemberUserVO memberVO = member_dao.selectOne(id);

		String resultStr = "";
		String result = "no";

		if (memberVO == null) {

			// no: 중복 아님, yes: 중복
			resultStr = String.format("[{'result':'%s'}]", result);

			return resultStr;

		}

		result = "yes";

		resultStr = String.format("[{'result':'%s'}]", result);

		return resultStr;

	} // check_id()

	// 회원 가입 신청
	@RequestMapping("/insert.do")
	public String insert( MemberUserVO vo ) {

		member_dao.insert(vo);

		return "redirect:main.do";

	}

	// 로그인
	@RequestMapping("/login.do")
	public String login( Model model ) {

		return Common.Board.VIEW_PATH + "login.jsp";

	}

	// 로그인 확인
	@RequestMapping("/login_check.do")
	@ResponseBody
	public String login_check( String id ) {

		String pwd = request.getParameter("pwd");

		MemberUserVO memberVO = member_dao.selectOne(id);

		String resultStr = "";

		// 아이디가 일치하지 않는 경우
		if (memberVO == null) {

			resultStr = "[{'param':'no_id'}]";

			// response.getWriter().print(resultStr);
			// 콜백 메소드로 id를 담은 JSON을 보낸다.
			return resultStr;

		}

		// 비밀번호 불일치
		if ( !memberVO.getPwd().equals(pwd) ) {

			resultStr = "[{'param':'no_pwd'}]";

			return resultStr;

		}

		// 정상적으로 로그인이 가능한 경우
		// memberVO 정보를 session에 저장(바인딩)
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval( 60 * 60 ); // 세션에 담긴 값을 1시간 동안 유지(기본값 30분)
		session.setAttribute("memberVO", memberVO);

		resultStr = "[{'param':'clear'}]";

		return resultStr;

	} // login_check()

	// 로그아웃
	@RequestMapping("/logout.do")
	public String logout( Model model ) {

		HttpSession session = request.getSession();
		session.removeAttribute("memberVO");

		return Common.Board.VIEW_PATH + "logout.jsp";

	}

	// 고객센터
	@RequestMapping("/custom_service.do")
	public String custom_service( Model model ) {

		return Common.Board.VIEW_PATH + "custom_service.jsp";

	}

	// 메인 페이지 조던 1 미드 그레이 포그
	@RequestMapping("/main_jordan_gray.do")
	public String main_jordan_gray( Model model ) {

		return Common.Board.VIEW_PATH + "commodity/" + "main_jordan_gray.jsp";
		
	}




















}
