<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<!-- Main Content -->
	<div class="content">
			<h2>1:1문의</h2>
			<hr/>
			<a href="/staff/board/inquiry/complete" style="text-decoration: none; color: inherit;">문의 완료 페이지 →</a>
			<div class="search-bar">
				<button class="refresh-button">⟳&nbsp;&nbsp;</button>
				<select class="sort-select">
					<option value="">정렬개수</option>
					<option value="all">전체</option>
				</select> <select class="sort-select">
					<option value="">전체</option>
					<option value="specific">특정</option>
				</select> <input type="text" class="search-input" placeholder="검색어를 입력해주세요.">
				<button class="search-button">검색</button>
			</div>

			<table class="member-table">
				<thead>
					<tr>					
						<th>제목</th>
						<th>내용</th>
						<th>작성자ID</th>
						<th>작성일</th>
						<th>답변일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					    <td>동물 입양 방법에 대해서 문의드립니다.</td>
					    <td><a href="/staff/board/inquiry/detail" style="text-decoration: none; color: inherit;">이번에 입양하고싶은 동물이 생겨서 입양을 하려고 하는데 반려가 되서요, 이유를 알 수 있을까요?</a></td>
					    <td>asdf</td>
					    <td>2024-12-29</td>
					    <td>2025-01-09</td>
					</tr>
				</tbody>
			</table>
		</div>