package com.and.web;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.MemberService;
import member.MemberVO;

@Controller
public class MemberController {
	@Autowired private MemberService member;
	
	//회원가입화면 요청 : 약관동의(agreement.jsp) 후 정보 입력(join.jsp)
	@RequestMapping("/member")
	public String member(HttpSession session) {
		session.setAttribute("category", "join");
		//응답화면연결
		return "member/agreement";
	}
	//회원 정보 입력창 요청
	@RequestMapping("/join")
	public String join() {

		//응답화면연결
		return "member/join";
	}
	
	// 로그인화면 요청
	@RequestMapping("/login")
	public String login(HttpSession session) {
		session.setAttribute("category", "login");
		//응답화면연결
		return "member/login";
	}
	//로그인처리 요청
	@ResponseBody @RequestMapping("/smartLogin")
	public boolean login(String id, String pw, HttpSession session) {
		//비지니스로직 - 화면에서 입력한 아이디/비번이 일치하는 회원정보를 DB에서 조회한다	
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		MemberVO vo = member.member_login(map);
		
		//화면에 출력할 수 있도록 세션에 attribute로 담는다
		session.setAttribute("loginInfo", vo);
		return vo==null ? false : true;
	}
	//로그아웃처리 요청
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		//비지니스로직 - 세션에 있는 로그인정보를 삭제한다
		session.removeAttribute("loginInfo");
		//응답화면연결
		return "redirect:/";
	}
}
