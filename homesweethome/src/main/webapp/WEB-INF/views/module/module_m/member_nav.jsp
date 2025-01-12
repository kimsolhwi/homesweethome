<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<body>
   <!-- 상단 -->
   <header>
      <div class=header_inner>
         <!-- 상단 바 -->
         <div class="header_top">
            <div class="top_bar" >
               <a href="/member/bmain">로그아웃</a><a href="#">우편함</a>
               <a href="/member/mypage/deactivation">마이페이지</a>
            </div>
         </div>

         <div class="menu_inner">
            <div class="header_menu">
               <!-- 로고 -->
               <div class="logo">
                  <img src="<%=request.getContextPath()%>/resources/image/logo.png"
                     alt="Logo"> <a href="/member/main">HomeSweetHome</a>
               </div>

               <!-- 메인메뉴 -->
               <ul class="menu_main">
                  <li><a href="/member/intro">센터 소개</a></li>
                  <li><a href="#">보호동물</a></li>
                  <li><a href="#">입양절차</a></li>
                  <li><a href=/member/board/main>게시판</a></li>
                  <li><a href="#">☰</a></li>
               </ul>
            </div>
         </div>
      </div>
   </header>

   <!-- 본문 -->
   <section>
      <div class="inner_cent">
      		<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>보호동물</b></h1>
			<div class="sideMenu">
				<ul class="sideMenu lists">
					<li class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">	
								<a>공고중</a>
							</li>
							<li class="list">
								<a>치료중</a>
							</li>
							<li class="list">
								<a>입양가능</a>
							</li>
							<li class="list">
								<a>입양완료 및 기타</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		