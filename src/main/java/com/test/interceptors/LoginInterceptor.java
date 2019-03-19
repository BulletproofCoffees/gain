package com.test.interceptors;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

public class LoginInterceptor implements HandlerInterceptor {
	// controller로 보내기 전에 처리하는 인터셉터
		// 반환이 false라면 controller로 요청을 안함
		// 매개변수 Object는 핸들러 정보를 의미한다. ( RequestMapping , DefaultServletHandler ) 
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//pre핸들 시작
		
				//로그인 확인
				if(Objects.isNull(request.getSession().getAttribute("name"))) {
					System.out.println("회원로그인 안되어있음.");
					
					/*req.getRequestDispatcher("/cally/").forward(req, res);*/
					/*res.sendRedirect("/cally/");*/
					/*
					 * request.getSession().setAttribute("Message","Interceptor Message: 로그인 안됌");
					 * response.sendRedirect("/");
					 */
							//return false;
					
					//메세지를 띄워주기 위해 redirect가 아닌 Exception 이용..
					request.setAttribute("Message", "Interceptor Message: 로그인후 이용할수 있습니다.");  
					ModelAndView mav = new ModelAndView("view/main/loginMain"); 
					throw new ModelAndViewDefiningException(mav);
			
		
				} else {
					//로그인 되어있음
					return true;
				}
				/*if (req.getMethod().equals("GET")) {
					System.out.println("true!!!!");
					return true;
				} else {
					System.out.println("false!!!!");
					return false;
				}*/
	}

	// controller의 handler가 끝나면 처리됨
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		/* System.out.println("postHandle!!!!"); */
		/*if (modelAndView.getModelMap().containsKey("status")) {
			String status = (String) modelAndView.getModelMap().get("status");
			if (status.equals("SUCCESS!")) {
				status = "Authentication " + status;
				modelAndView.addObject("status", status);
			}
		}*/
	}

	// view까지 처리가 끝난 후에 처리됨
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		/* System.out.println("afterCompletion!!!!"); */
		
	}


}