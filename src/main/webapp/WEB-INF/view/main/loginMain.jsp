<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 로그인 버튼 -->
  <a href="${sessionScope.googleurl}">
 <img width="230px"alt="Google &quot;G&quot; Logo" src="${pageContext.request.contextPath}/resources/img/btn_google_signin_dark_pressed_web@2x.png" />
 </a>
 
 
<script type="text/javascript">
window.onload = function(){
	//메시지 표시
	var message = "${Message}";
	if(message != ""){	
		alert(message);
	}
}
</script>


