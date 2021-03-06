<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="이웃책장-김은진/김진아/조수빈/최가희">
<meta name="keywords" content="이웃책장">
<meta name="description" content="책 공유 플랫폼">

<!-- sns share -->
<meta property="og:url" content="http://localhost:8080/book.do" />
<meta property="og:title" content="이웃책장" />
<meta property="og:type" content="website" />
<meta property="og:description" content="책 공유 플랫폼" />
<meta property="og:image" content="/images/book.png" />

<!-- favicon -->
<link rel="shortcut icon" href="/images/book.png">
<link rel="apple-touch-icon-precomposed" href="/images/book.png">
    
<title>이웃 책장 - header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href="/css/header.css" rel="stylesheet" />
</head>
<body>
	<header id="main-header" class="p-3 mb-3 border-bottom">
		<div class="container">
			<!-- main icon -->
			<div id="main-icon-container"
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
					<img src="/images/book.png" width="30" />
				</a>
				<!-- main menu bar -->
				<ul id="main-menu-bar"
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="/book.do" class="nav-link px-2 link-dark"
						style="color: #70D047"><b>이웃책장</b></a></li>
					<li><a href="/book/search.do" class="nav-link px-2 link-secondary">책</a></li>
					<li><a href="/book/view/create.do" class="nav-link px-2 link-secondary">책 등록</a></li>
					<li><a href="/book/funding.do" class="nav-link px-2 link-secondary">펀딩</a></li>
					<li><a href="/book/funding/view/create.do" class="nav-link px-2 link-secondary">펀딩 등록</a></li>
					<li><a href="/book/community/view/0.do" class="nav-link px-2 link-secondary">커뮤니티</a></li>
					<li><a href="/book/dm.do" class="nav-link px-2 link-secondary">DM</a></li>
				</ul>
				<!-- main search bar -->
				<form id="main-search-container"
					class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" method="POST"
					action="/book/search.do">
					<input type="search" name="keyword" class="form-control"
						placeholder="책 또는 저자 검색" aria-label="Search">
				</form>
				<!-- main profile icon and dropdown -->
				<div id="main-profile-container" class="dropdown text-end">
					<a href="/book/mypage.do"
						class="d-block link-dark text-decoration-none dropdown-toggle"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png" alt="mdo" width="32"
						height="32" class="rounded-circle" >
					</a>
					<!-- ****************************** -->
					<!-- ********* 프로필 메뉴에 들어갈 거 이야기 해봐야할 듯 *********** -->
					<!-- ****************************** -->
					<ul class="dropdown-menu text-small"
						aria-labelledby="dropdownUser1" style="">
						<li><a class="dropdown-item" href="/book/mypage.do">마이 페이지</a></li>
						<li><hr class="dropdown-divider"></li>
						<% if (session.getAttribute("member") != null)  {%>
							<li><a class="dropdown-item" href="/book/logout.do">Log Out</a></li>
						<%} else {%>
							<li><a class="dropdown-item" href="/book/login.do">Log In</a></li>
						<%} %>
					</ul>
				</div>
			</div>
		</div>
	</header>
</body>
</html>