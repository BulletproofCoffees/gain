<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-12">
       <table class="table table-bordered huga">
             <tr>
                   <th rowspan="2"></th>             	  
                   <th rowspan="2"><center>회사명</center></th>
                   <th colspan="2"><center>기간(YYYY.MM - YYYY.MM)</center></th>
                   <th rowspan="2"><center>직위</center></th>
                   <th rowspan="2"><center>담당업무</center></th>
             </tr>
             <tr>
                   <th><center>시작일</center></th>
                   <th><center>종료일</center></th>
             </tr>
            <tfoot id="careersit">
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->		           
            <tr id="career" style="display:none;">
                   <td><input type="text" name="car_no" style="display:none;"></td>
                   <td><input type="text" class="form-control" name="car_name"></td>
                   <td><input type="date" class="form-control" name="car_startday"></td>
                   <td><input type="date" class="form-control" name="car_endday"></td>
                   <td><input type="text" class="form-control" name="car_pos"></td>
                   <td><input type="text" class="form-control" name="car_job"></td>
             	</tr>
		<c:forEach items="${Career}" var="memver">
				<tr id="${memver.car_no}">
                   <td>
                   		<input type="text" class="form-control" name="car_no" value="${memver.car_no}" style="display:none;">
                   		<button type="button" class="btn btn-default" name="car_no" value="${memver.car_no}" onclick="deleteon('car_no','${memver.car_no}')">삭제</button></td>
                   <td><input type="text" class="form-control" name="car_name" value="${memver.car_name}"></td>
                   <td><input type="date" class="form-control" name="car_startday" value="${memver.car_startday}"></td>
                   <td><input type="date" class="form-control" name="car_endday" value="${memver.car_endday}"></td>
                   <td><input type="text" class="form-control" name="car_pos" value="${memver.car_pos}"></td>
                   <td><input type="text" class="form-control" name="car_job" value="${memver.car_job}"></td>
             	</tr>
		</c:forEach>	  	
<!-- ------------------------------------------------------------- -->
<!-- ------------------------------------------------------------- -->	
<!-- ------------------------------------------------------------- -->					 

            </tfoot>
       </table>
       <table class="table table-bordered">
             <tr>
               <th colspan="5"><center><button onclick="add_item('career','careersit')" type="button" class="btn btn-default">추가</button></center></th>
            </tr>
       </table>
</div>



