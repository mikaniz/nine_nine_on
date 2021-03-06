<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="targetUrl"><c:url value="/book/login.do" /></c:set>
<c:set var="registerUrl"><c:url value="/book/register.do" /></c:set>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="/js/login.js" ></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>로그인</title>
</head>
	<%@ include file="header.jsp"%>
	<div class="container py-5 w-25">
		<main class="form-signin mx-auto">
			<form action="${targetUrl}" method="post" class="d-block" name="loginForm">
				<!--  <img class="mb-4 w-25" src="./images/ex_image.png" alt="">  -->
				<h1 class="h2 mb-3 fw-normal fw-bold">이웃 책장</h1>

				<div class="form-floating">
					<input type="email" class="form-control" id="floatingInput"
						placeholder="name@example.com" name="id"> <label for="floatingInput" >아이디</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control" id="floatingPassword"
						placeholder="Password" name="password"> <label for="floatingPassword">비밀번호</label>
				</div><br>
				<!-- 
				<div class="checkbox mb-3">
					<label> <input type="checkbox" value="remember-me">
						아이디 저장
					</label>
				</div>
				 -->
				<input type="button" value="로그인" onClick="loginAction()" class="w-100 btn btn-lg btn-primary">  
			</form>
			<hr>
			<div><a href="${registerUrl}">회원가입</a></div>
		</main>
	</div>
</body>
</html>