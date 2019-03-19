<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
window.onload = function(){
	//로그인 성공후 주소이동
	var loginSuccess = "${loginSuccess}";
	if(loginSuccess != ""){	
		location.replace('${pageContext.request.contextPath}/main')
	}

}
</script>
  <style type="text/css">
  .wrapper {
  display: grid;
  grid-gap: 10px;
}
  
  .wrapper > a:nth-child(1) {
  grid-column: 1;
  grid-row: 1;
  }
   .wrapper > a:nth-child(2) {
  grid-column: 1;
  grid-row: 2;
  }  
  </style> 
   <h1>main</h1>
    
    
<p> 매버명 : ${sessionScope.name}</p>
		<a href="${sessionScope.googlesecessionurl}">탈퇴</a> 
	 	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>

	<div class="col-lg-12 wrapper">	 	
	  	<a href="${pageContext.request.contextPath}/insa">인사카드</a>
	  	<a href="${pageContext.request.contextPath}/book">my</a> 
 	</div>