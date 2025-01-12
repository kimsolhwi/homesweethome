	var valid_data = {
			id:{
				pattern:/^[a-z]+[a-zA-Z0-9]{3,6}$/g,
				message:"아이디 형식이 올바르지 않습니다. \n영문자 시작으로 3~6글자로 입력하세요."
			},
			pwd:{
				pattern:/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/g,
				message:"비밀번호 형식이 올바르지 않습니다.\n영문자 숫자 조합으로 6~10글자로 입력하세요."
			},
			name:{
				pattern:/^[가-힣]{2,6}$/g,
				message:"이름은 한글 2~6글자로 입력하세요."
			}
	}

	function validation(elementName){			
		let flag = true;
		
		let regExp = valid_data[elementName].pattern;
		let message =  valid_data[elementName].message;
		
		let input = $('input[name="'+elementName+'"]');		
		
		if(input.val()){ 
			if(!input.val().match(regExp)){
				alert(message);
				input.val('');
				input.focus();
				flag=false;
			}	
		}else{
			flag=false;
		}
		
		return flag;
	}
	
	
	function pic_check(){
		//alert("click file");
		let pictureInput = document.querySelector("input[name='picture']");
		let file = pictureInput.files[0];
		
		//이미지 확장자 jpg 확인
	    var fileFormat = file.name.substr(file.name.lastIndexOf(".")+1).toUpperCase();
		
	    if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
	        alert("이미지는 jpg 형식만 가능합니다.");
	        pictureInput.value="";      
	        return;
	    }
	    
	    //이미지 파일 용량 체크
	    if(file.size>1024*1024*1){
	         alert("사진 용량은 1MB 이하만 가능합니다.");
	         pictureInput.value="";
	         return;
	     };
	    
	}

	var checkID = "";
	function idCheck_go(){
		//alert("click idCheck");
		let inputID = $('input[name="id"]');
		if(!inputID.val()){
			alert("아이디를 입력하세요");
			inputID.focus();
			return;			
		}
		
		if(!validation('id')) return;
		
		$.ajax({
			url: "idCheck?id="+inputID.val(),
			method:"get" ,
			success:function(data){				
				if(data=="duplicated"){
					alert("이미 사용중인 아이디입니다.");
					inputID.focus();
					return;		
				}else{
					alert("사용 가능한 아이디입니다.")
					checkID = inputID.val();
					$('input[name="pwd"]').focus();
					return;
				}
			},
			error:function(error){
				AjaxErrorSecurityRedirectHandler(error.status);
			}
		});
	}