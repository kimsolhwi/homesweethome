<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</head>
<body class="body">
   <header class="header">
      <div class="logo">
         <img src="<%=request.getContextPath()%>/resources/image/logo.png"
            alt="Logo" /> <span>관리자</span>
      </div>
      <div class="logout">
         <a href="/logout">로그아웃</a>
      </div>
   </header>
   <div class="wrapper">
      <!-- Header -->

      <!-- Navigation -->
      <nav class="main_menu">
         <ul>
            <li><a href="/staff/animalcare">보호동물관리</a></li>
            <li><a href="/staff/member/list">회원관리</a></li>
            <li><a href="/staff/receive">인계관리</a></li>
            <li><a href="/staff/adoption">입양신청관리</a></li>
            <li><a href="/staff/graceperiod">유예신청관리</a></li>
            <li><a href="/staff/board/notice">게시판통합관리</a></li>
            <li><a href="/staff/reserve">방문예약관리</a></li>
            <li><a href="/staff/employee">사원관리</a></li>
         </ul>
      </nav>

<div class="innerWrapper">
	<!-- Sidebar -->	
		<div class="sidebar">
			<h1><b>회원관리</b></h1>
			<div class="sideMenu">
						<ul class="sideMenu list">
							<li class="list">
								<a href="/staff/member/list" style="text-decoration: none; color: inherit;">
									<b>- 가입회원</b>
								</a>
							</li>
							<li class="list">
								<a href="/staff/member/deactivation" style="text-decoration: none; color: inherit;">
									<b>- 탈퇴회원</b>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		
	<!-- /.sidebar -->