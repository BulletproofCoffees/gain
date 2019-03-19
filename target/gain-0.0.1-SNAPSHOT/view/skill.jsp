<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<form action="${pageContext.request.contextPath}/commit" method="post">
 <div class="col-lg-12">
               <div id="headrer" class="col-lg-12">
                  <div class="col-lg-9 col-md-offset-1">
                     <center><h1>SKILL INVENTORY</h1></center>
                  </div>
                  <div class="col-lg-2">
                     <center><p class="h1p">작성자:</p></center>
                  </div>
               </div>
               
		
		<c:forEach items="${memver}" var="memver">
		<input style="display:none" name="mem_no" value="${memver.mem_no}"/>
		</c:forEach>
		<input type="text"name="pj" value="pj" style="display:none;" >
               <div class="col-lg-1 col-lg-offset-11">
                   <button  class="btn btn-default">저장</button>
                   <p></p>
                </div>

               <div>
                  <table class="table table-bordered" style="margin-bottom: 0px;">
                     <tr>
                     	
                     
                        <th rowspan="2"></th>
                        <th rowspan="2" ><center ">프로젝트명</center></th>
                        <th colspan="2"><center>참여기간</center></th>
                        <th rowspan="2"><center>고객사</center></th>
                        <th rowspan="2"><center>금무회사</center></th>
                        <th colspan="2"><center>개발분야</center></th>
                        <th rowspan="2"><center>역할</center></th>
                        <th colspan="7"><center>개발환경</center></th>
                     </tr>
                     <tr>
                        <th><center>시작일</center></th>
                        <th><center>종료일</center></th>
                        <th><center>산업</center></th>
                        <th><center>응용</center></th>
                        <th><center>기종</center></th>
                        <th><center>O.S</center></th>
                        <th><center>언어</center></th>
                        <th><center>DBMS</center></th>
                        <th><center>TOOL</center></th>
                        <th><center>통신</center></th>
                        <th><center>기타</center></th>
                     </tr>
                            <tfoot id="field">
	              <tr id="pre_set" <c:if test="${Project != null || '[]'}">style="display:none;"</c:if>>
                   				 <td><input type="text" name="pj_no" style="display:none;"></td>
                                 <td><input type="text" class="form-control" name="pj_custom"></td>
                                 <td><input type="date" class="form-control" name="pj_startday"></td>
                                 <td><input type="date" class="form-control" name="pj_endday"></td>
                                 <td><input type="text" class="form-control" name="pj_comp"></td>
                                 <td><input type="text" class="form-control" name="pj_dev_ind"></td>
                                 <td><input type="text" class="form-control" name="pj_dev_app"></td>
                                 <td><input type="text" class="form-control" name="pj_part"></td>
                                 <td><input type="text" class="form-control" name="pj_device"></td>
                                 <td><input type="text" class="form-control" name="pj_os"></td>
                                 <td><input type="text" class="form-control" name="pj_lang"></td>
                                 <td><input type="text" class="form-control" name="pj_db"></td>
                                 <td><input type="text" class="form-control" name="pj_tool"></td>
                                 <td><input type="text" class="form-control" name="pj_comm"></td>
                                 <td><input type="text" class="form-control" name="pj_etc"></td>
                                 <td><input type="text" class="form-control" name="pj_name"></td>
                   </tr> 

		<c:forEach items="${Project}" var="memver">
			              <tr id="${memver.pj_no}">
				              	 <td>
					            	   <input type="text" class="form-control" name="pj_no" value="${memver.pj_no}" style="display:none;">
					            	   <button type="button" class="btn btn-default" onclick="deleteon('pj_no','${memver.pj_no}')">삭제</button>
					             </td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_custom}" name="pj_custom"></td>
                                 <td><input type="date" class="form-control"  value="${memver.pj_startday}" name="pj_startday"></td>
                                 <td><input type="date" class="form-control"  value="${memver.pj_endday}" name="pj_endday"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_comp}" name="pj_comp"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_dev_ind}" name="pj_dev_ind"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_dev_app}" name="pj_dev_app"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_part}" name="pj_part"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_device}" name="pj_device"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_os}" name="pj_os"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_lang}" name="pj_lang"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_db}" name="pj_db"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_tool}" name="pj_tool"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_comm}" name="pj_comm"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_etc}" name="pj_etc"></td>
                                 <td><input type="text" class="form-control"  value="${memver.pj_name}" name="pj_name"></td>
                         </tr> 
		</c:forEach>	  	
                    
                           </tfoot> 

                        </table>
                           <table  class="table table-bordered ">
                           <tr>
                              <th colspan="15"><center><button onclick="add_item('pre_set','field')" type="button" class="btn btn-default">추가 </button></center></th>                              
                           </tr>
                  </table>
               </div>
               
               <script type="text/javascript">
               
               </script>
</div>
 </form>
