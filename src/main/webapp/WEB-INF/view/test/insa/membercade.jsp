<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <style >
.huga{   
		 margin-bottom: 0px;
		}
 </style>
<script>
window.onload = function(){
	var message = "${a}";
	if(message == ""){
	} else {
		alert(message);
	}	
}

function deleteon(key,date) {
	deletes(key,date,"${pageContext.request.contextPath}/insa/delete")
}
</script>
 <!-- =======================================================================================  -->
 <div class="col-lg-12">
    <div id="headrer">
       <center>
          <h1>개인 이력 카드</h1>
       </center>
    </div>
 </div>
<!-- =======================================================================================  -->

<!-- =======================================================================================  -->
<form action="${pageContext.request.contextPath}/insa/commit" method="post">
<div class="col-lg-1 col-lg-offset-11">
    <button class="btn btn-default">저장</button>
    <p></p>
</div>
<%@ include file="cade/memver.jsp" %>   
 
<%@ include file="cade/memver2.jsp" %>  

<%@ include file="cade/memver3.jsp" %>  

<%@ include file="cade/memver4.jsp" %>  
</form>

                                            