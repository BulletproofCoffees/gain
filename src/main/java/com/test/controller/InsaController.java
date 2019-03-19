package com.test.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.service.impl.InsaServiceImpl;
import com.test.vo.MemberArryVo;
import com.test.vo.MemberVo;



@Controller
@RequestMapping(value="/insa")	
public class InsaController {
	
	
	String card = "view/test/insa/card";
	String list = "view/test/insa/list";
	
	
	@Resource(name = "instService")
	private InsaServiceImpl insaService;

	@RequestMapping(value="")	
	public String main( HttpServletRequest request) throws IOException {

		Map<String,String> map = new HashMap<>();
		map.put("m.mem_grade","직위");
		map.put("m.mem_depart","부서");
		map.put("m.mem_indate","입사일");
		map.put("p.pri_serial","주민번호");
		map.put("p.pri_phone","전화번호");
		map.put("p.pri_email","이메일");
		map.put("p.pri_addr","주소");

		request.getSession().setAttribute("condition", map );

		
            return card;
	}
	
	@RequestMapping(value="/search",method = {RequestMethod.GET, RequestMethod.POST})	
	public String search(ServletRequest request,MemberVo vo) throws IOException {		
		insaService.searchlist(request, vo);
		return list;
	}
	
	@RequestMapping(value="/search/{bno}")	
	public String search(@PathVariable String bno,ServletRequest request) throws IOException {	
		insaService.member(request, bno);
		return card;		
	}
	
	@RequestMapping(value="/commit", method=RequestMethod.POST)	
	public String commit(ServletRequest request,MemberArryVo avo,@Valid MemberVo vo, BindingResult bindingResult) throws IOException {			          
		System.out.println("==============================");
		System.out.println(vo.getMem_indate());
		System.out.println("==============================");

			 insaService.commit(request,avo, vo, bindingResult); 
           return card;
	}
	

	
	@RequestMapping(value="/delete", method=RequestMethod.POST , produces = "text/plain; charset=UTF-8")	
	public String delete(ServletRequest request,MemberVo vo) throws IOException {			          
		insaService.delete(request, vo); 
			 
            return card;
	}

}

