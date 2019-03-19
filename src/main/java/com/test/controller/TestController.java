package com.test.controller;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	
	@RequestMapping(value="/skill")	
	public String skill(ServletRequest request, HttpServletRequest req) throws IOException {				
		return "view/skill";
	}
	
	@RequestMapping(value="/membercade")	
	public String membercade(ServletRequest request, HttpServletRequest req) throws IOException {				
		return "view/membercade";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)	
	public String search(ServletRequest request, HttpServletRequest req) throws IOException {	
		
		System.out.println("°Ë»ö¾î  : " + request.getParameter("mem_name"));
		 System.out.println(request.getParameter("mem_name").length());
		return "view/test";
	}
	
	/*
	 * @RequestMapping(value="/test") public String test(ServletRequest request,
	 * HttpServletRequest req) throws IOException { return "view/test"; }
	 */

}

