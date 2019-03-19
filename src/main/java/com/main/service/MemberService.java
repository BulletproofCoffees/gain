package com.main.service;

import java.util.HashMap;
import java.util.Objects;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.social.google.api.plus.Person;
import org.springframework.stereotype.Service;

@Service("memberservice")
public class MemberService {
	
	@Resource(name = "googleservice")
	private GoogleService googleservice;
	
	//	google login urlget			
	public void googlelogin(HttpServletRequest request) {
		googleservice.googlelogin(request); 
	}
	
	// google login
	public void login(String code, HttpServletRequest request) {		
		//googlelogin		
		Person profile = googleservice.googlelogin(code);
		String name = profile.getDisplayName();
		String email = profile.getAccountEmail();

		HashMap<Object, String> map = new HashMap<>();
		map.put("email",email);
		map.put("name", name);
		 		
		  request.getSession().setAttribute("name", name);
		  //request.getSession().setAttribute("email", email);
		 
	
	}

	// googleloguot
	public void loguot(HttpServletRequest request) {
		System.out.println("loguot");
		HttpSession session = request.getSession();
		session.removeAttribute("name"); //세션 제거
	}


	// googlesecession
	public void googlesecession(String code,HttpServletRequest request) {
		googleservice.googlesecession(code); 
		HttpSession session = request.getSession();
		session.removeAttribute("name"); //세션 제거
	}



	
}
