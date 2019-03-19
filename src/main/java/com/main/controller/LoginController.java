package com.main.controller;

import java.io.IOException;
import java.util.Objects;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.service.MemberService;

@Controller
public class LoginController {	
	
	@Resource(name = "memberservice")
	private MemberService memberservice;

	@RequestMapping(value="/index", method = {RequestMethod.GET, RequestMethod.POST })	
	public String index(HttpServletRequest request) throws IOException {				
		memberservice.googlelogin(request);
            return "view/main/loginMain";
	}
	
	@RequestMapping(value="/main", method = {RequestMethod.GET, RequestMethod.POST })	
	public String main(HttpServletRequest request) throws IOException {		
            return "view/main/main";
	}
	
	//login 성공화면	
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(String code,HttpServletRequest request) {	
		if(!Objects.isNull(code)) {
		memberservice.login(code,request);
		}
		  request.setAttribute("loginSuccess", "loginSuccess");

        return "view/main/main";        
    }
	
	
	//logout
	@RequestMapping(value = "/logout", method = { RequestMethod.GET, RequestMethod.POST } )
	public String loguot(HttpServletRequest request) {		
		memberservice.loguot(request);
		return "view/main/loginMain";
	}

	
	//탈퇴
	@RequestMapping(value = "/googlesecession", method = {RequestMethod.GET, RequestMethod.POST})
	public String googlesecession(String code,HttpServletRequest request) {
		memberservice.googlesecession(code,request);		
		return "view/main/loginMain";
	}	
}
