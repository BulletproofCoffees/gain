package com.test.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import com.test.dao.InsaDao;
import com.test.vo.MemberArryVo;
import com.test.vo.MemberVo;

@Service("instService")
@Transactional
public class InsaServiceImpl {
	
	@Resource(name = "TestDao") private InsaDao dao;
	
	
	public void delete(ServletRequest request, MemberVo vo) {
		
		String adate = request.getParameter("adate");
		String akey = request.getParameter("akey");
		
		Map<String, Object> map = new HashMap<>();
		map.put("key", akey);
		map.put("date", adate);
				
		dao.delete(map);		
	}
	
	//검색 조건
	public void searchlist(ServletRequest request,MemberVo vo) {
		Map<String, String> map = new HashMap<>();
		map.put("key",request.getParameter("condition"));
		map.put("value",request.getParameter("input"));
		List<Object> list = dao.searchlists(request,map);
		 request.setAttribute("memver",list);
	}

	//인사카드 
	public void member(ServletRequest request, String bno) {		
		MemberVo vo = new MemberVo();		
		vo.setMem_no(bno);	
		
		List<MemberVo> bringlist = dao.search(request, vo);						

		MemberVo vo2 = new MemberVo();
		
		//맴버정보 
		MemberVo memlist = bringlist.get(0);	
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
	    
		for (int i = 0; i < bringlist.size(); i++) {
			
			MemberVo l = bringlist.get(i);
					
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
		
		request.setAttribute("Project", pj );
		request.setAttribute("school", sch);
		request.setAttribute("Education", edu);
		request.setAttribute("Skill", ski);
		request.setAttribute("certification", cer);
		request.setAttribute("Career", car);
	}	
	
	
	public void commit(ServletRequest request, MemberArryVo avo, MemberVo vo, BindingResult bindingResult) {
			
			if(request.getParameter("pj") != null) {				
					//프로잭트 폼처리
					pjarrayUpdate(request,avo);
				    member(request, vo.getMem_no());
				    request.setAttribute("a","프로잭트가 저장되었습니다.");
			} else {
					//유효성 검사
					if(bindingResult.hasErrors() == true ) {			         
			            	List<ObjectError> list = bindingResult.getAllErrors();
				            for (ObjectError e : list) {		            
					            System.out.println("에러발생 : "+ e.getDefaultMessage());
				                request.setAttribute("a",e.getDefaultMessage());				
				            }
			            
					} else {	
						
						//주민등록 검사
								Map<String, String> map = new HashMap<>();
								map.put("key","p.pri_serial");
								map.put("value", vo.getPri_serial());
								List<Object> serial = dao.searchlists(request, map);
								
							  if((serial.size() != 0 )&&(vo.getMem_no() == "")) {							  
								  		request.setAttribute("a","이미 등록된 회원입니다.");	
							//새 등록
							  }else if (vo.getMem_no() == "") {								  
										request.setAttribute("a","회원이 등록 되었습니다.");
										//인서트된 시퀀스
										String mem_no = dao.insert(request, vo);
										vo.setMem_no(mem_no);
										dao.inserts(request, vo);
										ArrayList<MemberVo> list = arrayUpdate(avo);
										if (list.size() != 0) {
											dao.update(request, list);
										}
										member(request, mem_no);
							//업데이트
							  }else {	
								  		System.out.println(vo.getMem_indate());
										dao.update(request, vo);
										ArrayList<MemberVo> list = arrayUpdate(avo);
									if (list.size() != 0) {
										dao.update(request, list);
									}
									member(request, vo.getMem_no());
									request.setAttribute("a","저장되었습니다.");
							  }	
					}
			}
	}

	//배열 리스트 처리
	private ArrayList<MemberVo> arrayUpdate(MemberArryVo avo) {

		ArrayList<MemberVo> list  = new ArrayList<>();

		MemberVo vo2;	
		
		//학력
		for (int i = 1; i < avo.getSch_no().length; i++) {
			vo2 = new MemberVo();			
			vo2.setSch(avo,i);
			list.add(vo2);
		}
						
		//자격증
		for(int i = 1; i <avo.getCer_no().length; i++) {				
			vo2 = new MemberVo();
			vo2.setCer(avo,i);
			list.add(vo2);			
		}
		
		//경력
		for (int i = 1; i < avo.getCar_no().length; i++) {			
			vo2 = new MemberVo();
			vo2.setCar(avo,i);
			list.add(vo2);
		}		 
		 
		//교육
		for (int i = 1; i < avo.getEdu_no().length; i++) {
			vo2 = new MemberVo();						
			vo2.setEdu(avo,i);
			list.add(vo2);		
		}

		//보유기술
		for (int i = 1; i < avo.getSki_no().length; i++) {				
			vo2 = new MemberVo();			
			vo2.setSki(avo,i);
			list.add(vo2);	
		}				
		return list;		
	}

	
	private void pjarrayUpdate(ServletRequest request, MemberArryVo avo) {				
		MemberVo vo2; 
		ArrayList<Object> list = new ArrayList<>();

		 for(int i = 1; i <avo.getPj_no().length; i++) {		
				vo2 = new MemberVo();
				vo2.setJp(avo,i);
				list.add(vo2);						
		 }
		 if (list.size() != 0) {
			 dao.Pj_update(request, list); 
		 }
	}

}
