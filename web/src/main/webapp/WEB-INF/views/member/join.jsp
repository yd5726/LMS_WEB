<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="css/member.css?<%=new java.util.Date()%>">
</head>
<body>
	<h3 class="d-none">회원서비스</h3>
	<div id="container" class="ct_top">
		<div class="main_wrap">
			<div class="left_area lnb03">
				<h3 class="d-none">lnb영역</h3>
				<h3 class="lnb_title">회원서비스</h3>
				<ul id="lnb" class="lnb_list" data-code="member">
					<li id="lnb_login">
						<a href="login" target="_self">로그인</a>
					</li>
					<li id="lnb_join" class="on">
						<a href="member" target="_self">회원가입</a>
					</li>
					<li id="lnb_findpw">
						<a href="#/member/find.jsp" target="_self">비밀번호찾기</a>
					</li>
					<li id="lnb_privacy">
						<a href="#/main/page.jsp?code=privacy" target="_self">개인정보취급방침</a>
					</li>
					<li id="lnb_terms">
						<a href="#/member/page.jsp?code=clause" target="_self">이용약관</a>
					</li>
				</ul>
			</div>
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>
						<li>회원서비스</li>
						<li class="last">회원가입</li>
					</ol>
				</div>
				<h4 class="content_title">회원가입</h4>
				<div class="content_body">
					<h5 class="box_title">회원가입</h5>
					<div class="tb_box">
						<form method='post' action='join' enctype='multipart/form-data'>
							<table>
								<colgroup>
									<col style="width: 14%">
									<col>
								</colgroup>
								<tbody>
									<tr><th class="tb_th">
											<label for="member_code" class="join_required">회원 구분<span class="must">*</span></label>
										</th>
										<td><label><input type="radio" name="member_code" value="STUD" checked="checked">학생</label>
											&nbsp;
											<label><input type="radio" name="member_code" value="TEACH">강사</label>
										</td>
									</tr>
									<tr><th class="tb_th">
											<label for="login_id" class="join_required">아이디<span class="must">*</span></label>
										</th>
										<td><input type="text" name="login_id" id="login_id" class="w200">
											<input type="button" class="button gray" id="id_ck" value="중복확인">
											<span>영문으로 시작하는 2-20자 영문, 숫자 조합을 입력하세요.</span>
										</td>
									</tr>
									<tr><th class="tb_th">
											<label for="password" class="join_required">비밀번호<span class="must">*</span></label>
										</th>
										<td><input type="password" name="password" id="password" class="w200">
											<span>영문, 숫자, 특수문자 조합 8자 이상 입력하세요.</span>
										</td>
									</tr>
									<tr><th class="tb_th"><label for="password_ck" class="join_required">비밀번호 확인<span class="must">*</span></label>
										</th>
										<td><input type="password" name="password_ck" class="w200">
										</td>
									</tr>
									<tr><th class="tb_th"><label for="user_name" class="join_required">이름<span class="must">*</span></label>
										</th>
										<td><input type="text" name="user_name" class="w200">
										</td>
									</tr>
									<tr><th class="tb_th">
											<label for="gender" class="join_required">성별<span class="must">*</span></label>
										</th>
										<td><label><input type="radio" name="gender" value="남" checked="checked">남</label>
											&nbsp;
											<label><input type="radio" name="gender" value="여">여</label>
										</td>
									</tr>
									<tr><th class="tb_th"><label for="email" class="join_required">이메일</label>
										</th>
										<td><div style="float:left;">
												<input type="text" name="email" id="email1" class="w100">
												@
												<input type="text" name="email" id="email2" class="w100">
												<select id="email3">
													<option>- 직접입력 -</option>
													<option value="naver.com">naver.com</option>
													<option value="gmail.com">gmail.com</option>
												</select>
											</div>
										</td>
									</tr>
									<tr><th class="tb_th"><label for="birth" class="join_required">생년월일</label>
										</th>
										<td><input type="text" name="birth" class="w200" placeholder="yyyy-MM-DD">
										</td>
									</tr>
									<tr><th class="tb_th"><label for="phone" class="join_required">전화번호</label>
										</th>
										<td><select name="phone1">
												<option>-선택-</option>
												<option value="010">010</option>
												<option value="062">062</option>
											</select>
											-
											<input type="text" name="phone2" maxlength="4" class="w50">
											-
											<input type="text" name="phone3" maxlength="4" class="w50">
										</td>
									</tr>
									<tr><th class="tb_th"><label for="post" class="join_required">우편번호</label>
										</th>
										<td><input type="text" name="post" class="w200" placeholder="우편번호">
										</td>
									</tr>
									<tr><th class="tb_th"><label for="address" class="join_required">주소</label>
										</th>
										<td><input type="text" name="address" class="w200" placeholder="주소">
										</td>
									</tr>
									<tr><th class="tb_th"><label for="prifilepath" class="join_required">프로필 이미지</label>
										</th>
										<td><input type="text" name="prifilepath" class="w200" placeholder="프로필 이미지">
										</td>
									</tr>
								</tbody>
							</table>
						</form>
						<div class="board btn">
							<input type="button" class="button white" value="취소" onclick="location.href='<c:url value="/"/>'">
							<input type="button" class="button gray" id="btn_submit" value="회원가입">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src='js/member.js?<%=new java.util.Date()%>'></script>
</body>
</html>


