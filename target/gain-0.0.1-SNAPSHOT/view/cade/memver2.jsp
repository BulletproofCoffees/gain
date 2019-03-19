<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
    
<div>
	<div class="col-lg-8">
		    <table class="table table-bordered huga" >
		          <tfoot id="schoolsit">
				          <tr>
				              <th></th>
				              <th><center>학교</center></th>
				              <th><center>학과</center></th>
				              <th><center>입학 ~ 졸업연도</center></th>
				              <th><center>상태</center></th>
				          </tr>
				         
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->		           
				          <tr id="school" style="display:none;">		           
		                 	<td><input type="text" name="sch_no" style="display:none;"></td>
			                <td>
			                     <input type="text" class="form-control col-lg-1" style="width: 50%;" placeholder="학교이름" name="sch_name">
			                      <select  id="disabledSelect" class="form-control col-lg-1"  style="width: 50%;" name="sch_grade">
			                           <option>고등학교</option>
			                           <option>대학교</option>
			                           <option>대학</option>
			                           <option>대학교(대학원)</option>
			                     </select>
			                </td>
			                <td>
			                  
			                      <input type="text" class="form-control" name="sch_major">
			                   
			                </td>
			                <td>
			                      <input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="입학연도" name="sch_startday">
			                      <center class="col-lg-1" style="width: 13%;padding-top: 5px;padding-bottom: 5px;">~</center>
			                       <input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="졸업연도" name="sch_endday">
			                </td>
			                 <td>
		                   		 <select  id="disabledSelect" class="form-control" name="sch_status">
		                       		<option value="졸업">졸업</option>
		                       		<option value="수료">수료</option>
		                       		<option value="채학">채학</option>
		                       		<option value="중퇴">중퇴</option>
		                       		<option value="전문학사">전문학사</option>
		                       		<option value="학사">학사</option>
		                       		<option value="석사">석사</option>
		                       		<option value="박사">박사</option>		                    		                       		
		                   		 </select>
		              		</td>
		                 </tr>
		<c:forEach items="${school}" var="memver">
		                 <tr id="${memver.sch_no}">
		                 	<td>
		                 		<input type="text" class="form-control" name="sch_no" value="${memver.sch_no}" style="display:none;">
		                 		<button type="button" class="btn btn-default" name="sch_no" value="${memver.sch_no}" onclick="deleteon('sch_no','${memver.sch_no}')">삭제</button>
		                 	</td>
			                <td>
			                     <input type="text" class="form-control col-lg-1" style="width: 50%;" placeholder="학교이름" name="sch_name" value="${memver.sch_name}">
			                      <select  id="disabledSelect" class="form-control col-lg-1"  style="width: 50%;" name="sch_grade"  value="${memver.sch_grade}">
			                      	   <option>${memver.sch_grade}</option>
			                           <option<c:if test="${memver.sch_grade == '고등학교' }">style="display:none;"</c:if>>고등학교</option>
			                           <option<c:if test="${memver.sch_grade == '대학교' }">style="display:none;"</c:if>>대학교</option>
			                           <option<c:if test="${memver.sch_grade == '대학' }">style="display:none;"</c:if>>대학</option>
			                           <option<c:if test="${memver.sch_grade == '대학교(대학원)' }">style="display:none;"</c:if>>대학교(대학원)</option>
			                     </select>
			                </td>
			                <td>
			                  
			                      <input type="text" class="form-control" name="sch_major" value="${memver.sch_major}">
			                   
			                </td>
			                <td>
			                      <input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="입학연도" name="sch_startday" value="${memver.sch_startday}">
			                      <center class="col-lg-1" style="width: 13%;padding-top: 5px;padding-bottom: 5px;">~</center>
			                       <input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="졸업연도" name="sch_endday" value="${memver.sch_endday}">
			                </td>
			                 <td>
		                   		 <select  id="disabledSelect" class="form-control" name="sch_status" value="${memver.sch_status}">
		                   		 	<option>${memver.sch_status}</option>
		                       		<option <c:if test="${memver.sch_status == '졸업' }">style="display:none;"</c:if> value="졸업">졸업</option>
		                       		<option <c:if test="${memver.sch_status == '수료' }">style="display:none;"</c:if> value="수료">수료</option>
		                       		<option <c:if test="${memver.sch_status == '채학' }">style="display:none;"</c:if> value="채학">채학</option>
		                       		<option <c:if test="${memver.sch_status == '중퇴' }">style="display:none;"</c:if> value="중퇴">중퇴</option>
		                       		<option <c:if test="${memver.sch_status == '전문학사' }">style="display:none;"</c:if> value="전문학사">전문학사</option>
		                       		<option <c:if test="${memver.sch_status == '학사' }">style="display:none;"</c:if> value="학사">학사</option>
		                       		<option <c:if test="${memver.sch_status == '석사' }">style="display:none;"</c:if> value="석사">석사</option>
		                       		<option <c:if test="${memver.sch_status == '박사' }">style="display:none;"</c:if> value="박사">박사</option>		                    		                       		
		                   		 </select>
		              		</td>
		                 </tr>
		</c:forEach>	  	
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->	
		          </tfoot>
		    </table>
		    
		    
		      <table class="table table-bordered">
		            <tr>
		                <th colspan="7"><center><button onclick="add_item('school','schoolsit')" type="button" class="btn btn-default" >추가 </button></center></th>
		           	</tr>
		      </table>
    </div>
    
    
 <!-- =======================================================================================  -->
    
	<div class="col-lg-4">
	    <table class="table table-bordered huga" >
	          <tr>
	          		<th></th>
	                <th><center>자격증</center></th>
	                <th><center>취득년도</center></th>
	          </tr>
	          <tfoot id="jagyeosit">	
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->		           
	          	 <tr id="jagyeo" style="display:none;">		     
	              	   <td><input type="text" name="cer_no" style="display:none;"></td>
	                   <td><input type="text" class="form-control" name="cer_name"></td>
	                   <td><input type="date" class="form-control" name="cer_day"></td>
	              </tr>
		<c:forEach items="${certification}" var="memver">
	              <tr id="${memver.cer_no}">
	              	   <td>
		              	   <input type="text" class="form-control" name="cer_no" value="${memver.cer_no}" style="display:none;">
		              	   <button type="button" class="btn btn-default" onclick="deleteon('cer_no','${memver.cer_no}')">삭제</button>
		              </td>
	                   <td><input type="text" class="form-control" name="cer_name" value="${memver.cer_name}"></td>
	                   <td><input type="date" class="form-control" name="cer_day" value="${memver.cer_day}"></td>
	              </tr>
		</c:forEach>	  	
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->					 
		 </tfoot>      
	    </table>

	    <table class="table table-bordered">
	          <tr>
	              <th colspan="2"><center><button onclick="add_item('jagyeo','jagyeosit')" type="button" class="btn btn-default" >추가</button></center></th>
	          </tr>
	    </table>
	</div>
</div>
 <!-- =======================================================================================  -->