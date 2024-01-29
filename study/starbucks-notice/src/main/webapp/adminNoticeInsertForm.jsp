<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <script defer src="./js/jquery-3.7.1.min.js"></script>
    <title>글쓰기</title>
</head>
<body>
    <div class="card">
        <div class="card-header1">
            <h1><a href="./adminNoticeList.jsp">스타벅스 공지사항 글 등록</a></h1>
        </div>
        <form action="./adminNoticeInsert.jsp" method="post" id="form1" onsubmit="return false">
        <div class="card-write">
            <div class="myinfo">
                이름<input type="text" name="korname" id="korname" placeholder="이름을 입력하세요.">
                <!-- 
                비밀번호<input type="password" placeholder="비밀번호를 입력하세요.">
                -->
            </div>
            <div class="title-w">
                제목<input type="text" name="title" id="title" placeholder="제목을 입력하세요.">
            </div>
            <div class="msg">
                내용<textarea placeholder="내용을 입력하세요." name="content" id="content"></textarea>
                <input type="file" name="filecontent" id="">
            </div>
        </div>
        <div class="btn-w">
        	<input style="cursor:pointer" type="submit" value="작성" class="input-btn-w" onClick="javascript: prevCheckTextbox();">
        	</div>
        </form>
    </div>
    
    <script>
		function prevCheckTextbox() {
		  if (!$('#korname').val()) {	//이름 관련 dom
		    alert('이름을 입력하세요');	//이름 입력 팝업창
		    $('#korname').focus();	//이름 입력칸으로 이동
		    
		    return;
		  }else if ($('#korname').val().length > 5) {
		    alert('이름을 5자 이내로 입력하세요.');	//이름 글자수 제한
		    $('#korname').focus();	//이름 입력칸으로 이동
		    return;
		  }
		  if (!$('#title').val()) {	//제목 관련 dom
		    alert('제목을 입력하세요');	//제목 입력 팝업창
		    $('#title').focus();	//제목 입력칸으로 이동
		    
		    return;
		  }
		  if (!$('#content').val()) {	//내용 관련 dom
		    alert('내용을 입력하세요');	//내용 입력 팝업창
		    $('#content').focus();	//내용 입력칸으로 이동
		    
		    return;
		  }
		  document.getElementById('form1').submit();
		}
    </script>
    
</body>
</html>