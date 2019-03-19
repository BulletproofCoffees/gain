<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
     <div class="col-lg-8">
           <table class="table table-bordered huga">
                <tr>
                      <th></th>
                      <th><center>교육명</center></th>
                      <th><center>시작일</center></th>
                      <th><center>종료일</center></th>
                      <th><center>기관</center></th>
                </tr>
                <tfoot id="gyoyugsit">               	    
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->		           
                    <tr id="gyoyug" style="display:none;">
	              	   		 <td><input type="text" name="edu_no" style="display:none;"></td>
                             <td><input type="text" class="form-control" name="edu_name" ></td>
                             <td><input type="date" class="form-control" name="edu_startday"></td>
                             <td><input type="date" class="form-control" name="edu_endday"></td>
                             <td><input type="text" class="form-control" name="edu_school"></td>
                       </tr>
		<c:forEach items="${Education}" var="memver">
                    <tr id = "${memver.edu_no}">
                    		  <td>
				              	   <input type="text" class="form-control" name="edu_no" value="${memver.edu_no}" style="display:none;">
				              	   <button type="button" class="btn btn-default" onclick="deleteon('edu_no','${memver.edu_no}')">삭제</button>
		              	     </td>
                             <td><input type="text" class="form-control" name="edu_name" value="${memver.edu_name}"></td>
                             <td><input type="date" class="form-control" name="edu_startday" value="${memver.edu_startday}"></td>
                             <td><input type="date" class="form-control" name="edu_endday" value="${memver.edu_endday}"></td>
                             <td><input type="text" class="form-control" name="edu_school" value="${memver.edu_school}"></td>
                       </tr>
		</c:forEach>	  		
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->
                 </tfoot>
          </table>
          <table class="table table-bordered">
             <tr>
                <th colspan="4"><center><button onclick="add_item('gyoyug','gyoyugsit')"  type="button" class="btn btn-default" >추가</button></center></th>
             </tr>
          </table>
     </div>

     <div class="col-lg-4">
         <table class="table table-bordered huga" >
               <tr>
                     <th></th>
                     <th><center>보유기술 및 외국어능력</center></th>
                     <th><center>숙련도</center></th>
               </tr>
               <tfoot id="gisusit">
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->		           
		               <tr id="gisul" style="display:none;">
	              	   		 <td><input type="text" name="ski_no" style="display:none;"></td>
		                     <td><input type="text" class="form-control" name="ski_name"></td>
		                     <td><input type="text" class="form-control" name="ski_grade"></td>
		               </tr>
		<c:forEach items="${Skill}" var="memver">
                    <tr id = "${memver.ski_no}">
                    		  <td>
				              	   <input type="text" class="form-control" name="ski_no" value="${memver.ski_no}" style="display:none;">
				              	   <button type="button" class="btn btn-default" onclick="deleteon('ski_no','${memver.ski_no}')">삭제</button>
		              	     </td>
		                     <td><input type="text" class="form-control" name="ski_name" value="${memver.ski_name}"></td>
		                     <td><input type="text" class="form-control" name="ski_grade" value="${memver.ski_grade}"></td>
		               </tr>
		</c:forEach>	  	
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->	
               </tfoot>
	    </table>
	    <table class="table table-bordered">
	          <tr>
	             <th colspan="2"><center><button onclick="add_item('gisul','gisusit')"  type="button" class="btn btn-default" >추가</button></center></th>
	          </tr>
	    </table>
   	</div>
</div> 