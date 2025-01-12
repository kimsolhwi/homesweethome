<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
	<!-- Main Content -->
	<div class="content">
			<h2>연락필요 사용자</h2>
			<hr/>
			<a href="/staff/board/review/complete" style="text-decoration: none; color: inherit;">연락 완료 페이지 →</a>
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
						<th>번호</th>
						<th>입양자ID</th>
						<th>입양번호</th>
						<th>입양자 전화번호</th>
						<th>입양날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					    <td>1</td>
					    <td><a href="/staff/board/review/detail" style="text-decoration: none; color: inherit;">vemvem</a></td>
					    <td>2200001</td>
					    <td>010-7777-7878</td>
					    <td>2024-10-18</td>
					</tr>
				</tbody>
			</table>
		</div>