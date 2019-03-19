<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	[<a href="<c:url value='/excelDown.do' />">엑셀</a>]

 <form method="post" id="form1">
     <button id="button" onclick="storage(); return false;">저장</button>
  <!--  <button id="button" >저장</button> -->
 <div>
		<table>			
				<tr>
					<td>						
					<input class="mem_no" type="text" value="${mem.mem_no}">
					<fmt:formatDate var="mem_indate" value="${mem.mem_indate}" pattern="yyyy-MM-dd"/>
					${mem_indate}
					
					</td>
				</tr>
		</table>
		
		<br />
		<table>
			<c:forEach items="${pj}" var="list">
				<tr>
					<td>
						<button type="button" class="btn">삭제</button>									
						<input class="pj_no" type="text" value="${list.pj_no}">
						<input class="pj_name"type="text" value="${list.pj_custom}">
					</td>					
				</tr>
			</c:forEach>
		</table>
		
		<br/>
		<table>
			<c:forEach items="${sch}" var="list">
				<tr>
					<td>
						<button type="button" class="btn">삭제</button>			
						<input  class="sch_no" type="text" value="${list.sch_no}" >     
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</form>


<script type="text/javascript">
//네임속성 추가
var inputs = document.querySelectorAll('input')
inputs.forEach((e) => {
	e.addEventListener('change',(event) => {
		e.setAttribute('name', e.className)
		//e.previousSibling.setAttribute('name', 'mem_no') //형제노드 추가
		})	
	})  
	
//삭제
//이벤트 캡쳐
var cols = document.querySelectorAll('td'); 
cols.forEach((e) => {
	//버튼 추적
	var button = e.firstChild.nextSibling
	button.addEventListener('click',() => {
		  console.log(e);
		  console.log(e.parentNode); //부모노드		
		  console.log(e.firstChild.nextSibling.nextSibling.nextSibling); //첫번쩨자식노드 
		  var no = e.firstChild.nextSibling.nextSibling.nextSibling
		  no.setAttribute('name', no.className+"_delete") //자식 첫번째노드네임 요소추가
		  e.parentNode.style.cssText = "display:none" //부모느드 스타일 추가

			//노드 복사
	/* 	  	var test = e.parentNode;
			var test1 = test.cloneNode(true);			  
			var targetArea = document.getElementById("removal");
			  targetArea.appendChild(test1);
		//제거
		  e.parentNode.parentNode.remove()
		 */
		  	
		})	
		
		
})






	
         


function storage () {
	
	   var fileValue = $("input[name='fileData']").length;
	    var fileData = new Array(fileValue);
	    for(var i=0; i<fileValue; i++){                          
	         fileData[i] = $("input[name='pj_no_delete']")[i].value;
	    }

		  console.log(fileData);
 
	
	
	var formData = $("#form1").serialize();
	//인코딩
	formData = decodeURIComponent(formData);

 $.ajax({
		cache : false,
		url : '${pageContext.request.contextPath}/list_test',
		data : formData,
		type : 'POST',
		dataType : 'text',
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
		success : function(data) {
			alert('저장')
		},
		error : function(response) {
			 alert('error')
		}
	})   
}

</script>


