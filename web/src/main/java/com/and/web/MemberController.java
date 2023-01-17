package com.and.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	//회원가입화면 요청 : 약관동의(agreement.jsp) 후 정보 입력(join.jsp)
	@RequestMapping("/member")
	public String member(HttpSession session) {
		session.setAttribute("category", "join");
		return "member/agreement";
	}
}
