<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify_myinfo</title>
	<link rel="stylesheet" type="text/css" href="css/member.css?<%=new java.util.Date()%>">
</head>
<body>
	<h3 class="d-none">회원서비스</h3>
	<div id="container" class="ct_top">
		<div class="main_wrap">
			<div class="left_area lnb03">
				<h3 class="d-none">lnb영역</h3>
				<h3 class="lnb_title">마이페이지</h3>
				<ul id="lnb" class="lnb_list" data-code="member">
					<li id="lnb_enrolment_log">
						<a href="enrolment_log" target="_self">수강 현황</a>
					</li>
					<li id="lnb_modify_myinfo" class="on">
						<a href="modify_myinfo" target="_self">회원 정보 수정</a>
					</li>
				</ul>
			</div>
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>
						<li>마이페이지</li>
						<li class="last">회원정보수정</li>
					</ol>
				</div>
				<h4 class="content_title">회원정보수정</h4>
				<div class="content_body">
					<div class="tb_top">
						<div class="modify_myinfo grayline_tab">
							<ul class="tab_tt tab_tt1">
								<li class="tab_title on">
									<a href="#개인정보수정">개인 정보 수정</a>
								</li>
								<li class="tab_title">
									<a href="#비밀번호변경">비밀번호 변경</a>
								</li>
							</ul>
						</div>
						<div class="tb_box type_write">
							<div class="passwd_box top">
								<div class="box_sub">
									<h3 class="box_stitle">
										비밀번호를 입력해주세요.
									</h3>
									<p>회원님의 개인정보보호를 위해 회원정보를 조회/수정하기 전 비밀번호를 다시 확인받고 있습니다.</p>
									<h4 class="box_login">
										<input type="password" name="passwd" id="passwd" class="w200">
										<a class="button gray">확인</a>
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>