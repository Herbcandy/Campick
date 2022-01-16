/*==============================
	SampleController.java
	- 사용자 정의 컨트롤러
===============================*/

package com.campick.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


public class SurveyCancelController implements Controller
{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		ModelAndView mav = new ModelAndView();
		
		try
		{				
			mav.setViewName("campick.wei");
			
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	
		
		return mav;
	}
	

}
