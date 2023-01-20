package com.and.web;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureController {
	@Autowired @Qualifier("bteam") private SqlSession sql;
	
	//학생 홈 - 수강신청
	@RequestMapping("/enrolment")
	public String lecture(HttpSession session) {
		//응답화면연결
		return "lecture/enrolment";
	}

}
