<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<ul class="nav nav-tabs tabs">
  <li role="presentation" class="active"><a href="#tab1">개인 이력 카드</a></li>
  <li role="presentation"><a href="#tab2">경력 카드</a></li>
  
</ul>
    <div class="tab_container">
   
        <div id="tab1" class="tab_content">
        <div class="container ">
			<%@ include file="membercade.jsp" %>
			</div>
        </div>
        
        
        <div id="tab2" class="tab_content">
        	<%@ include file="skill.jsp" %>
        </div> 
       
    </div>




<script type="text/javascript">
	nabei()
</script>