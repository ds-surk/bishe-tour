package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ChineseFilter implements Filter{

	 private FilterConfig config = null;
	 
	  public void init(FilterConfig config) throws ServletException {
	    this.config = config;
	  }
	 
	  public void destroy() {
	    config = null;
	  }
	 
	  public void doFilter(ServletRequest request, ServletResponse response,
	                     FilterChain chain) throws IOException, ServletException 
	 {  
	       request.setCharacterEncoding("utf-8");
	       chain.doFilter(request, response); 
	  }

}
