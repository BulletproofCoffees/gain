<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-lg-12">
								<div id="headrer">
										<center>
												<h1>개인 이력 카드</h1>
										</center>								
								</div>
							</div>
							
 							<div class="col-lg-1 col-lg-offset-11">
 							<button type="button" class="btn btn-default">저장</button>
 							<p></p>	
 							</div>
 							
 							<div class="col-lg-12">
		 							<table class="table table-bordered " >
				 							<tr>
						 							<th><center>성명</center></th>
						 							<td colspan="2"><input type="text" class="form-control" placeholder="성명"></td>
						 							<th><center>주민등록번호</center></th>
						 							
						 							<td colspan="2"><input type="text" class="form-control" placeholder="주민번호"></td>
						 							<th><center>성별</center></th>
						 							<td > 
														<select  id="disabledSelect" class="form-control">
															<option>남</option>
															<option>여</option>
														</select>						
													</td>
				 							</tr>
				 							
				 							<tr>
						 							<th><center>소속회사</center></th>
						 							<td colspan="3"><input type="text" class="form-control"></td>
						 							<th><center>입사일</center></th>
						 							<td colspan="3"><input type="text" class="form-control"></td> 							
				 							</tr>
				 							
				 							<tr>
						 							<th><center>부서</center></th>
						 							<td><input type="text" class="form-control"></td>
						 							<th><center>직위</center></th>
						 							<td><input type="text" class="form-control"></td>
						 							<th><center>병역</center></th>
						 							<td>
						 								<select  id="disabledSelect" class="form-control">
															<option>병역필</option>
															<option>미필</option>
														</select>
													</td>
						 							<th><center>결혼</center></th>
						 							<td>
						 								<select  id="disabledSelect" class="form-control">
															<option>N</option>
															<option>Y</option>
														</select>
													</td> 							
				 							</tr>
				 							
				 							<tr>
						 							<th colspan="2"><center>병역 입대일 ~ 제대일</center></th>
						 							<td colspan="2"><input type="text" class="form-control"></td>
						 							<th><center>역종,병과</center></th>
						 							<td colspan="3"><input type="text" class="form-control"></td> 							
				 							</tr>
		 						
		 							</table> 		 							
 							</div>	
 
 							<div class="col-lg-12">
		 							<table class="table table-bordered " >
				 							<tr>
						 							<th><center>전화</center></th>
						 							<td><input type="text" class="form-control" placeholder="(유선)"></td>
						 							<td><input type="text" class="form-control" placeholder="(무선)"></td>
						 					</tr>
						 					<tr>
						 							<th><center>E-Mail</center></th>
						 							<td colspan="2"><input type="text" class="form-control"></td>
						 					</tr>
						 					<tr>
						 							<th><center>주소</center></th>
						 							<td colspan="2"><input type="text" class="form-control"></td>
						 					</tr>
						 			</table>
						 	</div>
						 	
						 	<div>
								 	<div class="col-lg-8">
				 							<table class="table table-bordered " >
						 							<tr>
						 									<td><input type="text" class="form-control"></td>
						 									<th>
						 										<select  id="disabledSelect" class="form-control">
																	<option>고등학교</option>
																	<option>대학교</option>
																	<option>대학</option>
																	<option>대학교(대학원)</option>															
																</select>
						 									</th>	
						 									<th><center>학과</center></th>			 									
						 									<td><input type="text" class="form-control"></td>				 									
						 									<th><center>입학년도 </center></th>
						 									<td><input type="text" class="form-control"></td>
						 									<th><center>졸업년도 </center></th>
						 									<td><input type="text" class="form-control"></td>				 										 							
								 					</tr>
								 			</table>
								 	</div>
								 	
								 	<div class="col-lg-4">
				 							<table class="table table-bordered " >
								 					<tr>
								 							<th><center>자격증명</center></th>
								 							<th><center>취득일</center></th>
								 					</tr>
								 					<tr>
								 							<td><input type="text" class="form-control"></td>
								 							<td><input type="text" class="form-control"></td>
								 					</tr>
								 					
								 			</table>
								 	</div>		
							</div>
							
							<div class="col-lg-12">
		 							<table class="table table-bordered " >
				 							<tr>
						 							<th rowspan="2"><center>회사명</center></th>
						 							<th colspan="2"><center>기간(YYYY.MM - YYYY.MM)</center></th>
						 							<th rowspan="2"><center>직위</center></th>
						 							<th rowspan="2"><center>담당업무</center></th>
						 					</tr>
						 					<tr>
						 							<th><center>시작일</center></th>
						 							<th><center>종료일</center></th>
						 					</tr>
						 					<tr>
						 							<td><input type="text" class="form-control"></td>				 									
						 							<td><input type="text" class="form-control"></td>
						 							<td><input type="text" class="form-control"></td>
						 							<td><input type="text" class="form-control"></td>
						 							<td><input type="text" class="form-control"></td>
						 					</tr>
						 			</table>
						 	</div>
							 <div class="col-lg-8">
				 						<table class="table table-bordered " >
						 						<tr>
								 						<th><center>교육명</center></th>
								 						<th><center>시작일</center></th>
								 						<th><center>종료일</center></th>
								 						<th><center>기관</center></th>
								 				</tr>
								 				<tr>
								 						<td><input type="text" class="form-control"></td>
								 						<td><input type="text" class="form-control"></td>
								 						<td><input type="text" class="form-control"></td>
								 						<td><input type="text" class="form-control"></td>
								 				</tr>
						 				</table>		
							</div>
							<div class="col-lg-4">
				 							<table class="table table-bordered " >
								 					<tr>
								 							<th><center>보유기술 및 외국어능력</center></th>
								 							<th><center>숙련도</center></th>
								 					</tr>
								 					<tr>
								 							<td><input type="text" class="form-control"></td>
								 							<td><input type="text" class="form-control"></td>
								 					</tr>
								 					
								 			</table>
								 	</div>