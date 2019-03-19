<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-lg-12">
<input style="display:none" name="mem_no" value="${mem.mem_no}"/>
		<table class="table table-bordered " >
		        <tr>
		              <th><center>성명</center></th>
		              <td colspan="2"><input type="text" class="form-control" placeholder="성명" name="mem_name" value="${mem.mem_name}"></td>
		              <th><center>주민등록번호</center></th>
		              <td colspan="2"><input type="text" class="form-control" placeholder="주민번호" name="pri_serial" value="${mem.pri_serial}"></td>
		              <th><center>성별</center></th>
		              <td>
		                    <select  id="disabledSelect" class="form-control" name="pri_gender">
		                    	<option value="${mem.pri_gender}" >${mem.pri_gender}</option>
		                      <option value="남" >남</option>
		                       <option value="여" >여</option>
		                    </select>
		              </td>
		        </tr>
		        <tr>
		              <th><center>소속회사</center></th>
		              <td colspan="3"><input type="text" class="form-control" name="mem_comp" value="${mem.mem_comp}"></td>
		              <th><center>입사일</center></th>
		             
		              <td colspan="3"><input type="date" class="form-control" name="mem_indate" value="${mem.mem_indate}"></td>
		        </tr>
		        <tr>
		              <th><center>부서</center></th>
		              <td><input type="text" class="form-control" name="mem_depart" value="${mem.mem_depart}"></td>
		              <th colspan="2"><center>직위</center></th>
		              <td><input type="text" class="form-control" name="mem_grade" value="${mem.mem_grade}"></td>
		             
		              <th colspan="2"><center>결혼</center></th>
		              <td>
		                 <select  id="disabledSelect" class="form-control" name="pri_marriage">
		                 	<option value="${mem.pri_marriage}">${mem.pri_marriage}</option>
		                    <option value="N" <c:if test="${mem.pri_marriage == 'N' }">style="display:none;"</c:if>>N</option>
		                    <option value="Y" <c:if test="${mem.pri_marriage == 'Y' }">style="display:none;"</c:if>>Y</option>
		                 </select>
		              </td>
		        </tr>
		   		        
		        <tr>
		              <th><center>병역</center></th>
		              <td>
		                 <select  id="disabledSelect" class="form-control" name="mil_yn" value="${mem.mil_yn}">
		                    <option>병역필</option>
		                    <option>미필</option>
		                 </select>
		              </td> 
		              <td colspan="4">
		              		<input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="병역입대일" name="mil_startday" value="${mem.mil_startday}">
			                <center class="col-lg-2" style="width: 15%;padding-top: 5px;padding-bottom: 5px;">~</center>
			                <input type="date" class="form-control col-lg-1" style="width: 42%;" placeholder="제대일" name="mil_endday" value="${mem.mil_endday}">
		              </td>
		              <th><center>역종,병과</center></th>
		              <td colspan="1"><input type="text" class="form-control" name="mil_category" value="${mem.mil_category}"></td>
		        </tr>
		</table>
</div>


<!-- ==============================================================================================================================================================================  --> 
<!-- ==============================================================================================================================================================================  -->
<div class="col-lg-12">
	<table class="table table-bordered " >
    	<tr>
            <th><center>전화</center></th>
            <td><input type="tel" class="form-control" placeholder="(유선)" name="pri_tel" value="${memver.pri_tel}"></td>
            <td><input type="tel" class="form-control" placeholder="(무선)" name="pri_phone" value="${memver.pri_phone}"></td>
      	</tr>
      	<tr>
            <th><center>E-Mail</center></th>
            <td colspan="2"><input type="email" class="form-control" name="pri_email" value="${memver.pri_email}"></td>
      	</tr>
      	<tr>
            <th><center>주소</center></th>
            <td colspan="2">
            	<input type="text" class="form-control" id="sample4_roadAddress" name="pri_addr" value="${memver.pri_addr}">
            	<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
            	</td>
      	</tr>
	</table>
</div>


 
 