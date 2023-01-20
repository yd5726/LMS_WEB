<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>enrolment</title>
	<link rel="stylesheet" type="text/css" href="css/enrolment.css?<%=new java.util.Date()%>">
</head>
<body>
	<h3 class="d-none">회원서비스</h3>
	<div id="container" class="ct_top">
		<div class="main_wrap">
			<div class="left_area lnb03">
				<h3 class="d-none">lnb영역</h3>
				<h3 class="lnb_title">수강 신청</h3>
				<ul id="lnb" class="lnb_list" data-code="lecture">
					<li id="lnb_lecture_list_all" class="on">
						<a href="lecture_all" target="_self">전체</a>
					</li>
					<li id="lnb_lecture_kor">
						<a href="lecture_kor" target="_self">국어</a>
					</li>
					<li id="lnb_lecture_eng">
						<a href="lecture_eng" target="_self">영어</a>
					</li>
					<li id="lnb_lecture_math">
						<a href="lecture_math" target="_self">수학</a>
					</li>
				</ul>
			</div>
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>
						<li>강의</li>
						<li class="last">수강 신청</li>
					</ol>
				</div>
				<h4 class="content_title">수강 신청</h4>
				<div class="content_body">
					<div class="list_top">
						<div class="course_type">
							<select class="search_select" name="scid">
								<option>-과목 선택-</option>
								<option>국어</option>
								<option>수학</option>
								<option>영어</option>
							</select>
						</div>
					</div>
					<div class="search_form_wrap1">
						<div class="search_form">
							<div class="btn_sort">
								<span></span>
								<span></span>
								<span></span>
							</div>
							<div class="btn_sort">
								<span>갤러리형</span>
								<span>리스트형</span>
							</div>
						</div>
					</div>
					<div class="type_chart">
						<ul class="list_li course_gallery">
							<li>
								<a>
									<div class="cimg">
										<img src="" alt="7년 안에 경제적 자유를 만드는 7가지 비밀">
									</div>
								</a>
								<div class="ccont">
									<a>
										<div class="ctitle">7년 안에 경제적 자유를 만드는 7가지 비밀</div>
										<div class="cday">
											<span class="days">90일</span>
										</div>
										<div class="cprice">
											<span class="price">150,000원</span>
										</div>
									</a>
									<div class="cbtn">
										<a></a>
										<a class="button green course">수강신청</a>
									</div>
								</div>
							</li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
					<div class="page_bar"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>