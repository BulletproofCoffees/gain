<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <div class="container ">  
<table class="table table-hover" style="margin-bottom: 0px;">
<thead>
       <tr>
       <th>회원번호</th>
       <th>성명</th>
       <th>직위</th>
       <th>부서</th>
              <th>주민번호</th>       
              <th>전화번호</th>       
              <th>이메일</th>       
              <th>주소</th>       
              
       </tr>
       </thead>
<c:forEach items="${memver}" var="memver">       
       <tr class="thclick" value ='${memver.mem_no}' >
       <td>${memver.mem_no}</td>
       <th>${memver.mem_name}</th>
       <td>${memver.mem_grade}</td>
       <td>${memver.mem_depart}</td>
       <td>${memver.pri_serial}</td>       
       <td>${memver.pri_phone}</td> 
       <td>${memver.pri_email}</td>                     
       <td>${memver.pri_addr}</td>                     
                           
       </tr>
</c:forEach>
</table>
</div>
<script type="text/javascript">
	//리스트선택
	$('.thclick').bind('click', function() {			
			var userid = $(this).children().eq(0).text()			
			console.log('아이디 : ' + userid) 	
			location.replace('${pageContext.request.contextPath}/insa/search/'+ userid)
		})

</script>