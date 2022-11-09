<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- 폰트 킷 주소입니다 -->
<script src="https://kit.fontawesome.com/f8ebc57e81.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap"
	rel="stylesheet">

<!-- CSS 주소입니다. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">

<!-- JavaScript 주소입니다. -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/main.js"></script>



<!-- 타이틀입니다. -->
<title>코딩 커뮤니티</title>

<!-- 로고 및 아이콘 링크입니다. -->
<link rel="shortcut icon" type="image⁄x-icon"
	href="../main homepage\bilibili-brands.svg" />
</head>

<body>
	<div class="header">
		<div class="navbar">

			<!-- 로고 입니다. -->
			<div class="navbar__logo">
				<a href="/"><i class="fa-brands fa-bilibili fa-3x"></i></a>
			</div>

			<!-- 메뉴 입니다.-->
			<div class="navbar__menu">
				<ul id="ul">
					<li id="li"><a href="#">Home</a></li>
					<li id="li"><a href="#">취업tip</a></li>
					<li id="li"><a href="#">스터디</a></li>
					<li id="li"><a href="#">지식공유</a></li>
					<li id="li"><a href="/board/list">Q&A</a></li>
				</ul>
			</div>
			<!-- 로그인 회원가입 입니다.-->
			<div class="navbar_loginsignin">

				<c:choose>
					<c:when test="${sessionScope.login==null}">
						<div class="loginbox">
							<a href="login">로그인</a>
						</div>
						<div class="signupbox">
							<a href="join">회원가입</a>
						</div>
					</c:when>




					<c:otherwise>

						<div class="profile_card">
							<a href="#"> <img class="loginprofile"
								src="${pageContext.request.contextPath}/resources/img/다운로드.jpg">
							</a>
						</div>
						<div>
							${sessionScope.login.id}님 <br> <a class="mypage_a"
								href="mypage">마이페이지</a> <a class="logaout_a" href="logout">로그아웃</a>
						</div>

					</c:otherwise>
				</c:choose>
			</div>
		</div>

		<!-- 검색창 입니다. -->

		<form id="searchForm" class="form" action="/board/list" method="get"
			accept-charset="utf-8">
			<div class="search">

				<input type="text" id="keyword" class="searchTerm"
					placeholder="키워드로 검색하세요" name="keyword"
					onkeyup="eventKeyup(this.value)" />
				<button type="submit" id="add" class="searchButton" form="todo-form">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</form>
	</div>


	<!-- 광고 및 이미지 -->

	<div class="section">
		<input type="radio" name="slide" id="slide01" checked> <input
			type="radio" name="slide" id="slide02"> <input type="radio"
			name="slide" id="slide03">

		<div class="slidewrap">
			<ul class="slidelist">
				<li><label for="slide03" class="left"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표.png"
						class="L_img"></label> <a href="https://tomcat.apache.org/"> <img
						class="banner"
						src="${pageContext.request.contextPath}/resources/img/tomcat.png"
						style="border-style: none;" alt="광고"></a> </a> <label for="slide02"
					class="right"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표 - 복사본.png"
						class="R_img"></label></li>
				<li><label for="slide01" class="left"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표.png"
						class="L_img"></label> <a href="https://www.w3schools.com/"> <img
						class="banner"
						src="${pageContext.request.contextPath}/resources/img/w3schools.jpg"
						style="border-style: none;" alt="광고">
				</a> <label for="slide03" class="right"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표 - 복사본.png"
						class="R_img"></label></li>
				<li><label for="slide02" class="left"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표.png"
						class="L_img"></label> <a href="https://www.acmicpc.net/"> <img
						class="banner"
						src="${pageContext.request.contextPath}/resources/img/백준.png"
						style="border-style: none;" alt="광고">
				</a> <label for="slide01" class="right"><img
						src="${pageContext.request.contextPath}/resources/img/배너 화살표 - 복사본.png"
						class="R_img"></label></li>
				<div class="slide-control">
					<div class="control01">
						<label for="slide03" class="left"></label> <label for="slide02"
							class="right"></label>

					</div>
					<div class="control02">
						<label for="slide01" class="left"></label> <label for="slide03"
							class="right"></label>

					</div>
					<div class="control03">
						<label for="slide02" class="left"></label> <label for="slide01"
							class="right"></label>

					</div>
				</div>
			</ul>
		</div>

	</div>


	<!-- 메인 화면-->

	<div id="container">


		<!-- 좌측-->

		<div id="leftbox">


			<span class="blink" style="margin-left: 20px; font-size: 11px">메뉴별인기글</span>


			<!-- 스터디 인기글-->

			<div class="card">
				<div class="card_head">
					<a href="#">
						<div class="card_head_img">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/pen.png">
						</div>
						<div class="card_head_title">
							<span>스터디 인기글</span>
						</div>
						<div class="card_head_img2">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/pen.png">
						</div>
					</a>
				</div>
				<div class="card_content">
					<ol start="1">
						<c:forEach var="toptitle" items="${toptitle}">
							<div class="toptitle">
								<li><a
									href="http://localhost:8080/detail?bno=${toptitle.bno}">
										<div class="toptitle_p">
											<div class="toptitle_title">
											<span><td>${toptitle.title}</td></span>
											</div>
											<div>
											<span><td class="toptitle_cnt"><span style="font-size:xx-small">💗</span> ${toptitle.cnt}</td></span>
											</div>
										</div>
										
										
								</a></li>
							</div>
						</c:forEach>
					</ol>
				</div>
				<div>
					<a href="#">
						<p class="more">더보기</p>
					</a>
				</div>
			</div>


			<!-- 지식공유 인기글-->

			<div class="card">
				<div class="card_head">
					<a href="#">
						<div class="card_head_img">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/lamp.png">
						</div>
						<div class="card_head_title">
							<span>지식공유 인기글</span>
						</div>
						<div class="card_head_img2">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/lamp.png">
						</div>
					</a>
				</div>
				<div class="card_content">
					<ol start="1">
						<c:forEach var="toptitle" items="${toptitle}">
							<div class="toptitle">
								<li><a
									href="http://localhost:8080/detail?bno=${toptitle.bno}">
										<div class="toptitle_p">
											<div class="toptitle_title">
											<span><td>${toptitle.title}</td></span>
											</div>
											<div>
											<span><td class="toptitle_cnt"><span style="font-size:xx-small">💗</span> ${toptitle.cnt}</td></span>
											</div>
										</div>
										
										
								</a></li>
							</div>
						</c:forEach>
					</ol>
				</div>
				<div>
					<a href="#">
						<p class="more">더보기</p>
					</a>
				</div>
			</div>


			<!-- Q&A 인기글-->

			<div class="card">
				<div class="card_head">
					<a href="/board/list">
						<div class="card_head_img">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/Q&A로고.png">
						</div>
						<div class="card_head_title">
							<span>Q&A 인기글</span>
						</div>
						<div class="card_head_img2">
							<input class="titlelogo" type="image"
								src="${pageContext.request.contextPath}/resources/img/Q&A로고.png">
						</div>
					</a>
				</div>
				<div class="card_content">
					<ol start="1">
						<c:forEach var="toptitle" items="${toptitle}">
							<div class="toptitle">
								<li><a
									href="http://localhost:8080/detail?bno=${toptitle.bno}">
										<div class="toptitle_p">
											<div class="toptitle_title">
											<span><td>${toptitle.title}</td></span>
											</div>
											<div>
											<span><td class="toptitle_cnt"><span style="font-size:xx-small">💗</span> ${toptitle.cnt}</td></span>
											</div>
										</div>
										
										
								</a></li>
							</div>
						</c:forEach>
					</ol>
				</div>
				<div>
					<a href="/board/list">
						<p class="more">더보기</p>
					</a>
				</div>
			</div>

		</div>


		<!-- 중앙 -->

		<div id="centerbox">

			<span class="blink" style="margin-left: 15px; font-size: 11px;">실시간인기글</span>


			<!-- 새로운 글 리스트-->

			<c:forEach var="mainlist" items="${mainlist}">
				<div class="list" data-id="${mainlist.bno}">

					<!--사용자 프로필 사진과 아이디-->

					<div class="cardhead">
						<div class="profile_card">
							<a href="#"> <img class="profile"
								src="${pageContext.request.contextPath}/resources/img/다운로드.jpg">
							</a>
						</div>

						<div class="cardtitle_username">
							<div>
								<a href="#"> <font class="userid"><td>${mainlist.id}</td></font>
								</a> <span> <font style="vertical-align: inherit;"> <font
										style="vertical-align: inherit;">-</font>
								</font>
								</span> <font class="userid"><td>${mainlist.regdate}</td></font>
								<button type="button" class="outcardimage">❌</button>
								<button type="button" id="textbox-url" class="morecardimage">🔗</button>
								<input type="hidden" id="data-area" class="data-area"
									value="http://localhost:8080/detail?bno=${mainlist.bno}">

							</div>
							<div class="listtitle">
								<a class="data-url"
									href="http://localhost:8080/detail?bno=${mainlist.bno}">
									<h3>
										<td>${mainlist.title}</td>
									</h3>
								</a>

							</div>
						</div>
					</div>

					<div class="content">
						<div class="content_p">
							<td>${mainlist.content}</td>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!--중앙 컨테이너 끝 -->


		<!-- 우측 -->

		<div id="rightbox">


			<!-- 구글 지원 검색창-->

			<form class="googleform" action="javascript:searchFunction()"
				method="post">
				<div class="googlebox">
					<input class="googlesearch" id="googleinput"
						name="google_search_link" type="text" placeholder="  google 검색 지원"
						style="margin-right: 5px;"> <input type="image"
						class="googlebutton"
						src="${pageContext.request.contextPath}/resources/img/Google__G__Logo.svg.png">
				</div>
			</form>
			<!-- 최근검색어 -->

			<div class="recent_searches">

				<form id="todo-form" class="form">
					<input id="keyword2" required maxlength="10" type="hidden"
						placeholder="SEARCH">
				</form>

				<div class="todo-inner" id="recent_searches_title">
					<div class="allDelete off">
						<span class="tit">최근 검색어</span> <span class="btn">전체 삭제 ❌</span>
					</div>
				</div>
				<div class="recent_searches_word">
					<ul id="todo-list">
					
					</ul>
				</div>
			</div>

			<!-- 관심항목 -->


			<!-- 취업tip 달력 메뉴-->

			<div class="tab">
				<ul class="tabnav">
					<li><a href="#tab01">달 력 </a></li>
					<li><a href="#tab02">취업TIP</a></li>
				</ul>
				<div class="tabcontent">
					<div id="tab01">
						<table id="calendar">
							<thead>
								<tr>
									<th><input class="monthbutton" name="preMon" type="image"
										src="${pageContext.request.contextPath}/resources/img/next - 복사본.png"></th>
									<th colspan="5" class="year_mon"></th>
									<th><input class="monthbutton" name="nextMon" type="image"
										src="${pageContext.request.contextPath}/resources/img/next.png"></th>
								</tr>
								<tr>
									<th style="color: red;">일</th>
									<th>월</th>
									<th>화</th>
									<th>수</th>
									<th>목</th>
									<th>금</th>
									<th>토</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
					<div id="tab02">취업 tip tap 메뉴 내용입니다.</div>
				</div>

			</div>
			<!--tab-->
		<div>
		<c:choose>
					<c:when test="${sessionScope.login==null}">
						<div class="direct_github">
							<input type="image" src="${pageContext.request.contextPath}/resources/img/github.png">
						</div>
						
						<div class="direct_write">
							<a id="please_login" href="/login">
							<span>
							✍🏻
							</span>
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="direct_github">
							<input type="image" src="${pageContext.request.contextPath}/resources/img/github.png">
						</div>
						<div class="direct_write">
							<a href="/write">
							<span>
							✍🏻
							</span>
							</a>
						</div>

					</c:otherwise>
		</c:choose>
		</div>
		</div>
		

		<!-- footer -->

	</div>
	<div class="footer">
		<div class="footer-content">greenstudy.220608.team01@cod1ng</div>
		<div class="team-email">
			<p>Lee Jea Seo : wotj0111@gmail.com</p>
			<p>Baek Jong Young : kide9632@naver.com</p>
			<p>Kim Byung Yong : kkby826@gmail.com</p>
			<p>Park Eun Hui : 7875hi@naver.com</p>
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/keyword.js"></script>
</body>


</html>