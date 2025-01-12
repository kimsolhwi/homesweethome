<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/member_style/body.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common.css">

<style>
/* 이미지 배경 */
.image-cat {
	width: 100%;
	height: 200px;
	background-image:
		url('<%=request.getContextPath()%>/resources/image/cat.jpg');
	background-size: cover;
	background-position: center;
	position: relative;
}
</style>	
	
</head>
<body>

<div class="content-wrapper">
	<div class="content-title">
		<h1>
			<b>찜목록</b>
		</h1>
	</div>
	<!-- 카드 컨테이너 -->
	<div class="card-container">
		<!-- 여러 카드 -->
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p>
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p>
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p>
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p>
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
		<div class="card-list">
			<div class="image-cat">
				<button class="heart-btn">❤️</button>
			</div>
			<div class="info">
				<p>
					<strong>스코티시폴드</strong> | 암컷
				</p>
				<p>관리번호: 24-4-154</p>
			</div>
		</div>
	</div>

	<!-- JavaScript -->
	<script>
        // 모든 하트 버튼에 클릭 이벤트 추가
        const heartButtons = document.querySelectorAll(".heart-btn");
        heartButtons.forEach(button => {
            button.addEventListener("click", function () {
                button.classList.toggle("active"); // 색상 토글
            });
        });
    </script>
</body>
