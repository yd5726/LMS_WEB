<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>enrolment_log</title>
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
					<li id="lnb_enrolment_log" class="on">
						<a href="enrolment_log" target="_self">수강 현황</a>
					</li>
					<li id="lnb_modify_myinfo">
						<a href="modify_myinfo" target="_self">회원 정보 수정</a>
					</li>
				</ul>
			</div>
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>
						<li>마이페이지</li>
						<li class="last">수강현황</li>
					</ol>
				</div>
				<h4 class="content_title">수강현황</h4>
				<div class="content_body">
					<div class="tab_wrap">
						<div class="tb_top tb_top_large">
							<div class="grayline_tab">
								<ul class="tab_tt">
									<li class="tab_title on">
										<a href="#수강중인과정">수강 중인 과정</a>
									</li>
									<li class="tab_title">
										<a href="#종료된과정">종료된 과정</a>
									</li>
								</ul>
							</div>
							<div class="search_form_wrap4">
								<div class="btn_sort">
									<select name="ord">
										<option>최근 신청순</option>
										<option>오래된 신청순</option>
										<option>과정명 오름차순</option>
										<option>과정명 내림차순</option>
										<option>시작일 오름차순</option>
										<option>시작일 내림순</option>
										<option>종료일 오름차순</option>
										<option>종료일 내림차순</option>
									</select>
								</div>
							</div>
						</div>
						<div class="tb_box type_list mypage_course_user_list">
							<table summary="수강 중인 과정 및 기간을 나타냅니다.">
								<colgroup>
									<col style="width: 10%">
									<col style="width: 60%">
									<col style="width: 27%">
									<col style="width: 13%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">과정명</th>
										<th scope="col">학습기간</th>
										<th scope="col">강의실</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tac" colspan="5">수강 중인 과정이 없습니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>