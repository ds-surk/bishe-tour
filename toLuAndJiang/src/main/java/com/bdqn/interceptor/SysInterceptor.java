package com.bdqn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bdqn.pojo.shopping.User;

public class SysInterceptor extends HandlerInterceptorAdapter {
	
	private Logger logger = Logger.getLogger(SysInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.debug("SysInterceptor preHandle ==========================");
		System.out.println(123123);
		HttpSession session = request.getSession();
		
		User user = (User)session.getAttribute("user");		
		if(null != user){ //dev SUCCESS
			return true;
		}else{
			response.sendRedirect(request.getContextPath()+"/403.jsp");
			return false;
		}
		
	}
}
