<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/staff_style/staff_member.css">
<style>
.image-img {
	background-image:
		url('<%=request.getContextPath()%>/resources/image/nana.jpg');
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
	width: 150px;
	height: 150px;
}
</style>
</head>

<body>
	<!-- Main Content -->
	<div class="content">
		<h2>가입회원-상세</h2>
		<br />
		<hr />
		<br />
		<form action="/staff/member/list" method="post" class="form">
			<div class="image-preview">
				<div class="image-img"></div>
			</div>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" id="name" value="">
			</div>
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" id="id" value="">
			</div>
			<div class="form-group">
				<label for="birth">생년월일</label> <input type="text" id="birth"
					value="">
			</div>
			<div class="form-group">
				<label for="sex">성별</label> <input type="text" id="sex" value="">
			</div>
			<div class="form-group">
				<label for="phone">전화번호</label> <input type="text" id="phone"
					value="">
			</div>
			<div class="form-group">
				<label for="address">주소</label> <input type="text" id="address"
					value="">
			</div>
			<div class="form-group">
				<label for="mail">이메일</label> <input type="text" id="mail" value="">
			</div>
			<div class="form-group">
				<label for="animal">관심있는 동물</label> <input type="text" id="animal"
					value="">
			</div>
			<div class="form-group">
				<label for="joindate">가입일자</label> <input type="text" id="joidate"
					value="">
			</div>
			<div class="form-group">
				<label for="adopdate">입양일자</label> <input type="text" id="adopdate"
					value="">
			</div>
			<div class="button-container">
				<button type="submit" class="button">목록</button>
			</div>
		</form>
	</div>