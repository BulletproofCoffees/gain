package com.book.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/book")	
public class BookController {
	
	@RequestMapping(value="")	
	public String main( HttpServletRequest request) throws IOException {
		


		
            return "view/book/Main";
	}

}
