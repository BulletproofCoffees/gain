package com.test.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.vo.MemberArryVo;
import com.test.vo.MemberVo;

@Controller
public class TastController {

	@Inject
	private SqlSession session;

	@RequestMapping(value = "/list_test", method = { RequestMethod.GET }, produces = "text/plain; charset=UTF-8")
	public String main(MemberVo vo, ModelAndView mav, HttpServletRequest request) throws IOException {
				
		List<MemberVo> list = session.selectList("testlist", vo);
		
		MemberVo vo2 = new MemberVo();
		
		//맴버정보 
		MemberVo memlist = list.get(0);	
	    vo2.setMem(memlist);
	    request.setAttribute("mem", vo2);
        
	    //pk중복체크
		List<Object> list2 = new ArrayList<>(); 
	    List<MemberVo> pj  = new ArrayList<>(); 
	    List<MemberVo> sch = new ArrayList<>(); 
	    List<MemberVo> edu = new ArrayList<>(); 
	    List<MemberVo> ski = new ArrayList<>(); 
	    List<MemberVo> cer = new ArrayList<>(); 
	    List<MemberVo> car = new ArrayList<>(); 
	    
		for (int i = 0; i < list.size(); i++) {
			
			MemberVo l = list.get(i);
					
			if(!list2.contains(l.getPj_no())) {				
			  list2.add(l.getPj_no());   
			  vo2 = new MemberVo();
			  vo2.setJp(l); 
			  pj.add(vo2); 
			}						
			if(!list2.contains(l.getSch_no())) {
				  list2.add(l.getSch_no()); 				  
				  vo2 = new MemberVo();
				  vo2.setSch(l); 				  
				  sch.add(vo2); 
			}			
			if(!list2.contains(l.getEdu_no())) {
				  list2.add(l.getEdu_no()); 				  
				  vo2 = new MemberVo();
				  vo2.setEdu(l); 				  
				  edu.add(vo2); 
			}
			if(!list2.contains(l.getSki_no())) {
				  list2.add(l.getSki_no()); 				  
				  vo2 = new MemberVo();
				  vo2.setSki(l); 				  
				  ski.add(vo2); 
			}
			if(!list2.contains(l.getCer_no())) {
				  list2.add(l.getCer_no()); 				  
				  vo2 = new MemberVo();
				  vo2.setCer(l); 				  
				  cer.add(vo2); 
			}
			if(!list2.contains(l.getCar_no())) {
				  list2.add(l.getCar_no()); 				  
				  vo2 = new MemberVo();
				  vo2.setCar(l); 				  
				  car.add(vo2); 
			}			 
		}	
		
		request.setAttribute("pj", pj );
		request.setAttribute("sch", sch);
		request.setAttribute("edu", edu);
		request.setAttribute("ski", ski);
		request.setAttribute("cer", cer);
		request.setAttribute("car", car);
		
		

		
		return "view/test/listtest";
		//return "view/test/boardList";
	}

	@RequestMapping(value = "/list_test", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public String mainp(HttpServletRequest request,MemberArryVo vo,MemberVo vo2) throws IOException {

		
		  
		/*
		 * List<MemberVo> list = new ArrayList<>(); for (int i = 0; i <
		 * vo.getMem_no().length; i++) { vo2 = new MemberVo();
		 * vo2.setMem_no(vo.getMem_no()[i]); vo2.setMem_name(vo.getMem_name()[i]);
		 * list.add(vo2); }
		 */
		// session.update("testlistup", list);

		//배열값 처리
		Map<Object, Object[]> map = convertMap(request);

		/*
		 * for(Entry<Object, Object> entry : map.entrySet()){
		 * System.out.println(entry.getKey() + ": " + entry.getValue());
		 * 
		 * }
		 */
		 
		return "view/test/listtest";
		
	}

	//배열값 처리
	public static Map<Object, Object[]> convertMap(HttpServletRequest request){	

		Map<Object,Object[]> map = new HashMap<>();
		
		Enumeration<String> names = request.getParameterNames();	
		while(names.hasMoreElements())
		{
			String retName = names.nextElement().toString();
			Object objs [] = request.getParameterValues(retName);		
			
			
			 map.put(retName, objs);		
		}	
			
		for (Entry<Object, Object[]> entry : map.entrySet()) {			
			for (int i = 0; i < entry.getValue().length; i++) {			
						System.out.println(entry.getKey() + ": " + entry.getValue()[i]);
			}
		}
		
		return map;
	}
	
	
	//pol
	@RequestMapping(value = "/excelDown.do")
	public void excelDown(HttpServletResponse response) throws Exception {



	    //목록조회
	    //List<BoardVO> list = boardService.selectBoardList();
		List<MemberVo> list = session.selectList("testlist");



	    // 워크북 생성

	    Workbook wb = new HSSFWorkbook();

	    Sheet sheet = wb.createSheet("게시판");

	    Row row = null;

	    Cell cell = null;

	    int rowNo = 0;



	    // 테이블 헤더용 스타일

	    CellStyle headStyle = wb.createCellStyle();

	    // 가는 경계선을 가집니다.

	    headStyle.setBorderTop(BorderStyle.THIN);

	    headStyle.setBorderBottom(BorderStyle.THIN);

	    headStyle.setBorderLeft(BorderStyle.THIN);

	    headStyle.setBorderRight(BorderStyle.THIN);



	    // 배경색은 노란색입니다.

	    headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());

	    headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);



	    // 데이터는 가운데 정렬합니다.

	    headStyle.setAlignment(HorizontalAlignment.CENTER);



	    // 데이터용 경계 스타일 테두리만 지정

	    CellStyle bodyStyle = wb.createCellStyle();

	    bodyStyle.setBorderTop(BorderStyle.THIN);

	    bodyStyle.setBorderBottom(BorderStyle.THIN);

	    bodyStyle.setBorderLeft(BorderStyle.THIN);

	    bodyStyle.setBorderRight(BorderStyle.THIN);



	    // 헤더 생성

	    row = sheet.createRow(rowNo++);

	    cell = row.createCell(0);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("번호");

	    cell = row.createCell(1);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("이름");

	    cell = row.createCell(2);

	    cell.setCellStyle(headStyle);

	    cell.setCellValue("제목");



	    // 데이터 부분 생성

	    for(MemberVo vo : list) {

	        row = sheet.createRow(rowNo++);

	        cell = row.createCell(0);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getMem_no());

	        cell = row.createCell(1);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getMem_name());

	        cell = row.createCell(2);

	        cell.setCellStyle(bodyStyle);

	        cell.setCellValue(vo.getPri_serial());

	    }



	    // 컨텐츠 타입과 파일명 지정

	    response.setContentType("ms-vnd/excel");

	    response.setHeader("Content-Disposition", "attachment;filename=test.xls");



	    // 엑셀 출력

	    wb.write(response.getOutputStream());

	    wb.close();

	}



}





