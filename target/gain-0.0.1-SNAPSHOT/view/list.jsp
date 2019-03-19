<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <div class="container ">  
<table class="table table-hover" style="margin-bottom: 0px;">
<thead>
       <tr>
       <th>번호</th>
       <th>성명</th>
       <th>직위</th>
       <th>부서</th>       
       </tr>
       </thead>
<c:forEach items="${memver}" var="memver">       
       <tr class="thclick" value ='${memver.mem_no}' >
       <th>${memver.mem_no}</th>
       <th>${memver.mem_name}</th>
       <th>${memver.mem_grade}</th>
       <th>${memver.mem_depart}</th>       
       </tr>
</c:forEach>
</table>


		</div>
<script type="text/javascript">
	//리스트선택
	$('.thclick').bind('click', function() {			
			var userid = $(this).children().eq(0).text()			
			console.log('아이디 : ' + userid) 	
			location.replace('${pageContext.request.contextPath}/search/'+ userid)
		})

</script>