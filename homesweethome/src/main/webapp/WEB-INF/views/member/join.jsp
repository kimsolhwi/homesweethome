<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>homesweethome</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/check.js"></script>

<style>
body {
	font-family: NanumSquare_ac;
	background-color: #FFFFFF;
	color: #333;
}

div.wraper {
	width: 600px;
	height: auto;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 50px;
}

div.container {
	width: 600px;
	padding: 50px;
	border: 1px solid #ddd;
	border-radius: 10px;
}

div.login-logo {
	padding-top: 50px;
}

form.login-form {
	width: 500px;
	margin: 0 auto;
}

div.input-group label {
	font-size: 15px;
	float: left;
	padding-top: 10px;
}

input.form-control {
	width: 80%;
	padding-left: 10px;
	margin-left: 10px;
}

.input-group>.custom-select:not(:first-child), .input-group>.form-control:not(:first-child)
	{
	border-radius: 5px;
}

.input-group:not(.has-validation)>.form-control:not(:last-child) {
	border-radius: 5px;
}

.div button {
	background-color: #333;
	color: white;
	cursor: pointer;
}

.button:hover {
	background-color: #555;
}

div img.logoImg {
	width: 50px;
	height: 40px;
}

div.submit {
	padding: 10px;
	height: 60px;
	background-color: #7C7C7C;
	border-radius: 5px;
}

div.submit button {
	color: white;
	font-size: 20px;
	letter-spacing: 8px;
}

.interest-container {
	border: 1px solid #ccc;
    border-radius: 5px; /* 둥근 테두리 */
    padding: 15px; /* 내부 여백 */
    margin: 10px; /* 위아래 간격 */
    width: 98%;
}

.input-date{
	border: 1px solid #ccc;
    border-radius: 5px; /* 둥근 테두리 */
}

.container button {
	display: flex;
	justify-content: center;
	background-color: #888;
	width: 100%;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 5px;
	cursor: pointer;
	font-size: 18px;
}

.container form button:hover {
	background-color: #666;
}

</style>
</head>
<body>
	<div class="wraper">
		<div class="container">
			<div class="login-logo">
				<img src="<%=request.getContextPath()%>/resources/image/logo.png"
					alt="logoimg" class="logoImg"> <a><b>HomeSweetHome</b></a>
			</div>
			<!-- /.login-logo -->
			<h5 class="login-box-msg">회원가입</h5>
			<p style="text-align: center;">
				<span style="color:red;">*</span> 표시는 필수입니다.
			</p>

			<form name="join" class="login-form" enctype="multipart/form-data">
				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 아　&nbsp;&nbsp;&nbsp;이&nbsp;&nbsp;&nbsp;　디&nbsp;</label>
					<input name="id" type="text" onblur="validation('id');" 
					onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" class="form-control radius" placeholder="아이디를 입력하세요">
					　<div><button type="button" onclick="check_ID();">중복확인</button></div>
				</div>

				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 비 &nbsp;&nbsp;밀 &nbsp;&nbsp;번 &nbsp;&nbsp; 호&nbsp;</label>
					<input name="pwd" type="password" class="form-control radius" placeholder="비밀번호를 입력하세요">
				</div>
				
				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 비밀번호 확인</label>&nbsp;&nbsp;&nbsp;
					<input name="pwd" type="password" class="form-control radius" placeholder="비밀번호를 입력하세요">
				</div>

				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 이　　　　름</label>&nbsp;&nbsp;&nbsp;
					<input name="name" type="text" onblur="validation(this.name);"
					onkeyup="this.value=this.value.trim();"class="form-control radius" placeholder="이름을 입력하세요">
				</div>

				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 생　년　월　일</label>&nbsp;&nbsp;&nbsp;
					<input name="date" type="date" class="input-date">
				</div>
				
				<div class="login-form">
					<label><span style="color: red;">*</span> 성　　　　별</label>
						　<label>
							<input type="radio" value="male"> 남자　　　
							<input type="radio" value="female"> 여자
						  </label>
				</div>
				　
				<div class="login-form">
					<label><span style="color: red;">*</span> 이　&nbsp;&nbsp;미　&nbsp;&nbsp;지
					　<span style="font-size:14px;">※이미지는 jpg형식과 1MB만 가능합니다.</span></label>
					<br/>
					&nbsp;&nbsp;<input name="picture" type="file">
				</div>
				　
				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 전 &nbsp;&nbsp;화 &nbsp;&nbsp;번 &nbsp;&nbsp;호 &nbsp;</label>
					<input name="phone" type="test" class="form-control radius" placeholder="010부터 - 포함으로 입력하세요">
				</div>

				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 주　　　　소</label>&nbsp;&nbsp;&nbsp;
					<input name="address" type="text" class="form-control radius" placeholder="예) 대전광역시 중구 선화동">
				</div>

				<div class="input-group mb-3">
					<label><span style="color: red;">*</span> 이　&nbsp;&nbsp;&nbsp;메&nbsp;&nbsp;&nbsp;　일&nbsp;</label>
					<input name="email" type="email" onblur="validation('email');" class="form-control radius" placeholder="예) example@naver.com">
				</div>

				<div class="login-form interest-container">
					<label for="interest"> ※ 관심 있는 동물</label><br/>
						<p>- 내가 선택한 관심있는 동물을 추천받을 수 있습니다.<br/>(복수 선택 가능)</p>
					<div class="interest-options">
						<input type="checkbox" value="dog"> 강아지　　
						<input type="checkbox" value="cat"> 고양이　　
						<input type="checkbox" value="other"> 기타동물
					</div>
				</div>
				<br />
				<div class="row">
					<!-- /.col -->
					<div><button type="button" class="btn btn-block" style="padding: 10px; width: 28.7em;"
								 onclick="join_go();">가입하기</button></div>
				</div> <!-- onclick="join_go();" -->
			</div>

		</div>

	</form>
	
<script>
	function check_ID() {
		// alert("아이디 중복확인");
		let inputID = $('input[name="id"]');
		if(!inputID.val()){
			alert("아이디를 입력하세요");
			inputID.focus();
			return;
		}
	}
		
	function join_go() {
		
		if (!pic_check()) {
	        return;
	    }
		
		let form = document.forms.join;
		for(let element of form ){
			//alert(element.name);
			switch(element.name){
				case "id":case "pwd":case "name":case "date":case "phone":case "address":case "email":case  "picture":
					if(!element.value){
						alert(element.name+"은 필수입니다.");					
						if(element.name=="picture"){
							element.click();
						}else{
							element.focus();
						}					
						return;
					}
					
					if(element.name=="id" && element.value!=checkID){
						alert("아이디 중복확인은 필수입니다.");
						return;
					}
			}
		}
		
		alert("안녕하세요!");
		form.action="join";
		form.method="post";
		form.submit();
	}
</script>