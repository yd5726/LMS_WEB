<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
header {
	border-bottom: 1px solid #aaa;
	align-items: center; 
	justify-content: space-between;
	padding: 0 100px;
	display: flex;
}
header nav, header ul { display: flex; }
header nav ul { font-size: 18px; font-weight: bold; }
header nav ul li:not(:first-child) { margin-left: 10px; }
header nav li a.active, header nav li a:hover { color: #fff; font-weight: bold; }
header div li:not(:first-child) { margin-left: 5px; }
.profile{
	width: 20px;
	height: 20px;
}
</style> 
<style>
	a{ text-decoration: none; color: #000; }
	nav{
		display: flex;
		justify-content: center;
		flex-basis: auto;
		flex-grow: 1;
		align-items: center;
		background-color: #656565;
	}
	nav ul{
		flex-direction: row;
	}
</style> 
<header>
<nav>
	<ul>
		<li><a href='<c:url value="/"/>'>홈</a></li>
		<li><a href='list.cu' ${category eq 'cu' ? 'class="active"' : ''}>강의</a></li>
		<li><a href='list.hr' ${category eq 'hr' ? 'class="active"' : ''}>게시판</a></li>
		<li><a href='list.no' ${category eq 'no' ? 'class="active"' : ''}>마이페이지</a></li>
	</ul>
</nav>
<div>
	<ul>
		<!-- 로그인 하지 않은 경우 -->
		<c:if test="${empty loginInfo }">
			<li><a class='btn-fill' href='login'>로그인</a></li>
			<li><a class='btn-fill' href='member'>회원가입</a></li>
		</c:if>
		
		<!-- 로그인 한 경우 -->
		<c:if test="${not empty loginInfo }">
			<li><img class='profile' src="${loginInfo.profilepath}">
			<li><strong> ${loginInfo.member_name }</strong></li>
			<li><a class='btn-fill' href="changePW">비밀번호변경</a></li>
			<li><a class='btn-fill' href="logout">로그아웃</a></li>
		</c:if>
	</ul>
</div>
</header>