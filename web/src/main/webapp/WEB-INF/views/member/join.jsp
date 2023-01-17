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
	<div id="container">
		<div class="main_wrap">
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>					
						<li>홈</li>
						<li>회원서비스</li>
						<li class="last">회원가입</li>
					</ol>
				</div>
				<h4 class="content_title">회원가입</h4>
				<div class="contet_body">
					<div class="join_normal">
						<form name="form1" method="POST">
							<h5 class="box_title">약관동의</h5>
							<p class="box_tx">회원가입을 위해서 아래 이용약관, 개인정보 및 이용에 대한 안내를 읽고 동의해 주세요.</p>
							<div class="gray_box top">
								<h6 class="box_stitle">이용약관*</h6>
								<div class="g_box_in">
									<div class="textin">
										<div class="clause">
											<h3>제 1조 (목적)</h3>
											<p class="depth1">
												이 약관은 YH-Academy(이하 “원격평생교육원”이라 함)이 제공하는 제반 서비스의 이용에 관한 조건 및 절차에 관한 기본적인 사항과 기타 필요한 사항을 규정함을 목적으로 한다.
											</p>
											<h3>제 2조 (정의)</h3>
											<ol class="dept1">
												<li>① 이 약관에서 사용하는 용어의 정의는 다음과 같다.</li>
											</ol>
											<ol class="dept2">
												<li>1.서비스 : 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 회원이 이용할 수 있는 원격평생교육원에서 제공하는 관련 제반 서비스를 의미한다.</li>
												<li>2.회 원 : 원격평생교육원의 서비스에 접속하여 이 약관에 따라 원격평생교육원과 이용계약을 체결하고 원격평생교육원이 제공하는 서비스를 이용하는 고객을 말한다.</li>
												<li>3.아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 원격평생교육원이 승인하는 문자와 숫자의 조합을 의미한다.</li>
												<li>4.비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미한다.</li>
												<li>5.콘텐츠 : 원격평생교육원이 웹사이트에서 제공하는 온라인 강좌 및 기타 관련 정보를 의미한다.</li>
												<li>6.운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 원격평생교육원에서 선정한 사람을 의미한다.</li>
												<li>7.해 지 : 원격평생교육원 또는 회원이 서비스 개통 이후 이용계약을 종료시키는 의사 표시를 의미한다.</li>
											</ol>
										</div>
									</div>
								</div>
								<p class="check">
									<label>
										<input type="checkbox" name="agree_yn1" value="Y">
										이용약관에 동의합니다.
									</label>
								</p>
							</div>
							<div class="gray_box">
								<h6 class="box_stitle">개인정보 수집 및 이용*</h6>
								<div class="g_box_in">
									<div class="textin">
										1.항목 : 이름, 아이디, 비밀번호, 이메일, 생년월일, 성별, 휴대전화번호, 주소
										<br>
										2.목적 : 홈페이지 회원 가입 및 서비스 이용.관리
										<br>
										3.보유기간 : 회원탈퇴 후 5일까지
										<br>
									</div>
								</div>
								<p class="check">
									<label>
										<input type="checkbox" name="agree_yn2" value="Y">
										개인정보 수집 및 이용에 동의합니다.
									</label>
								</p>
							</div>
							<div class="gray_box">
								<h6 class="box_stitle">개인정보 처리위탁*</h6>
								<div class="g_box_in">
									<div class="textin">
										회사는 시스템 안정성과 서비스 향상을 위하여 아래와 같이 개인정보를 위탁하고 있습니다.
										<br>
										1.수탁자:(주)하나소프트
										<br>
										2.업무내용 : 교육관리시스템(LMS)관리 및 유지보수
										<br>
									</div>
								</div>
								<p class="check">
									<label>
										<input type="checkbox" name="agree_yn3" value="Y">
										개인정보 처리위탁에 동의합니다.
									</label>
								</p>
							</div>
							<div class="gray_box">
								<h6 class="box_stitle">마케팅 정보 활용 및 수신동의(선택)</h6>
								<div class="g_box_in">
									<div class="textin">
										마케팅 수신동의
										<br>
										1.수집항목 : 이메일,SNS
										<br>
										2.이용목적 : 상품소개 및 이벤트 정보 등의 안내
										<br>
										3.보유기간 : 별도 동의 철회 시 까지
									</div>
								</div>
								<p class="check">
									<label>
										<input type="checkbox" name="email_yn" value="Y">
										이메일 수신
									</label>
									&nbsp;
									<label>
										<input type="checkbox" name="sms_yn" value="Y">
										SMS 수신
									</label>
								</p>
							</div>
							<div class="gray_box">
								<p class="check">
									<label>
										<input type="checkbox" name="agree_yn_all">
										위 사항에 모두 동의합니다.
									</label>
								</p>
							</div>
							<div class="board btn">
								<input type="submit" class="button gray" value="동의합니다.">
								<input type="button" class="button white" onclick="history.go(-1)" value="동의하지 않습니다.">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src='js/member.js?<%=new java.util.Date()%>'></script>
</body>
</html>


