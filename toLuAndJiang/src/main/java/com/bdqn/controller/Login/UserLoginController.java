package com.bdqn.controller.Login;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bdqn.pojo.shopping.User;
import com.bdqn.service.Login.LoginService;



//import sun.security.mscapi.RSASignature.MD5;



@Controller
@RequestMapping(value = "/user")
public class UserLoginController<Session> {
	private Logger logger = Logger.getLogger(UserLoginController.class);
	@Resource
	private LoginService userservice;

	User user = new User();

	@RequestMapping(value = "/login")
	public String login() {
		logger.debug("input travelUser loginPage==================");

		return "loginJsp/login";
	}

	
	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public String doLogin(@RequestParam String email, @RequestParam String password,
			HttpServletRequest request,HttpServletResponse response,HttpSession session) {
		logger.debug("doLogin====================================");

		user=userservice.login(email, password);
		if (user!=null) {			
			session.setAttribute("user",user);
			Cookie cookie=new Cookie("email",email);
			cookie.setMaxAge(60*60*24*30);
			response.addCookie(cookie);
            System.out.println("登录的email为:"+email);
			return "redirect:/user/index";			 
		} else {			
			request.setAttribute("msg", "请输入正确的用户名和密码！");
			 return "loginJsp/login";
		}			 
	}

		
	@RequestMapping(value = "/register")
	public String register() {
		logger.debug("input travelUser registerPage==================");
		return "loginJsp/register";
	}

	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	public String doRegist(@RequestParam String email, @RequestParam String password,
			@RequestParam String UID,HttpSession session,ServletRequest request) {
		user=userservice.findUsersByUserEmail(email);
		if(user==null) {
			userservice.Regist(email, password,UID);
			return "loginJsp/login";
		}else if(email==null||password==null||email==""||password==""){
			session.setAttribute("null","请完善注册信息！！！");
			return "loginJsp/register";
		}
		return "loginJsp/register";
	}
	//生成激活码
	@RequestMapping(value = "/product")
	@ResponseBody
	public String product(ServletRequest request,HttpSession session){
		 char[] arr = {'0','1','2','3','4','5','6','7','8','9'};
		 String value1 ="";
	        for(int i = 0 ; i < 4 ; i ++ ) {
	        	value1 +=""+arr[(int) Math.floor(Math.random() * arr.length)];
	        }
	        System.out.println("激活码为："+value1);
	        String value2=request.getParameter("input2");
	        if(!value1.equals(value2)) {
	        	session.setAttribute("error", "请输入正确的激活碼！！！");
	        }  
	        return value1;
	}
	
	//验证邮箱是否已被使用
		@RequestMapping(value = "/Chake")
		@ResponseBody
		public String Chake(@RequestParam String email) {		
			user=userservice.findUsersByUserEmail(email);		
			if(user!=null) {
				return "false";			
			}
			return "true";		
		}

	@RequestMapping(value = "/index")
	public String index(HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/user/login";
		}
		return "loginJsp/index";
	}

	@RequestMapping(value = "/newPassword")
	public String newPassword() {
		logger.debug("input travelUser newPasswordPage==================");

		return "loginJsp/newPassword";
	}

	// 关于修改密码的表单提交
	@RequestMapping(value = "/modifyPassword", method = RequestMethod.POST)
	public String modifyPassword(@RequestParam(value="email",required=false) String email,
			               @RequestParam(value="password",required=false) String password,
                           @RequestParam(value="newpassword",required=false) String newpassword,
		                   HttpSession session,ServletRequest request) {
		String oldPassword=request.getParameter("oldpassword");
		user=(User) session.getAttribute("user");
		String loginPassword=user.getPassword(); 
		//System.out.println("此時的登陸密碼是"+loginPassword);
		//System.out.println("此時的原來密碼是"+oldPassword);
		if(!oldPassword.equals(loginPassword)) {
			request.setAttribute("msg", "请输入正确的密码!!!");
			return "loginJsp/newPassword"; 
		}else {
			userservice.modifyPasswordByUserEmail(email,newpassword);
			return "loginJsp/login";
		}		
	}
	
	@RequestMapping(value = "/backPassword")
	public String backPassword() {
		logger.debug("input travelUser backPasswordPage==================");

		return "loginJsp/backPassword";
	}
	
	
    //关于忘记密码，修改密码的表单提交
	@RequestMapping(value = "/anothermodifyPassword", method = RequestMethod.POST)
	public String anothermodifyPassword(HttpSession session,
		@RequestParam(value="email",required=false) String email,
	    @RequestParam(value="newpassword",required=false) String newpassword){
		
		userservice.modifyPasswordByUserEmail(email,newpassword);
		if(email==null||newpassword==null||email==""||newpassword=="") {
			//session.setAttribute("null", "用户账号和密码不能为空！！！");
			return "loginJsp/backPassword";
		}
		return "loginJsp/login";	    	

	}
		
		 
     /*@RequestMapping(value = "/user/i_forget_password")
     @ResponseBody
      public Map forgetPass(HttpServletRequest request,@RequestParam String email){
          user = userservice.findUsersByUserEmail(email);
          Map map = new HashMap<String ,String >();
          String msg = "";
          if(user == null){              //用户名不存在
              msg = "用户名不存在,你不会忘记用户名了吧?";
              map.put("msg",msg);
             return map;
         }
         try{
             String secretKey= UUID.randomUUID().toString();  //密钥
             Timestamp outDate = new Timestamp(System.currentTimeMillis()+30*60*1000);//30分钟后过期
             long date = outDate.getTime()/1000*1000;                  //忽略毫秒数
             user.setValidataCode(secretKey);
             user.setRegisterDate(outDate);
             userservice.update(user);    //保存到数据库
             String key = user.getEmail()+"$"+date+"$"+secretKey;
             String digitalSignature = MD5.MD5Encode(key);                 //数字签名
 
             String emailTitle = "有方云密码找回";
             String path = request.getContextPath();
             String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
             String resetPassHref =  basePath+"user/reset_password?sid="+digitalSignature+"&userName="+user.getEmail();
             String emailContent = "请勿回复本邮件.点击下面的链接,重设密码<br/><a href="+resetPassHref +" target='_BLANK'>点击我重新设置密码</a>" +
                     "<br/>tips:本邮件超过30分钟,链接将会失效，需要重新申请'找回密码'"+key+"\t"+digitalSignature;
             System.out.print(resetPassHref);
             SendMail.getInstatnce().sendHtmlMail(emailTitle,emailContent,user.getEmail());
             msg = "操作成功,已经发送找回密码链接到您邮箱。请在30分钟内重置密码";
             logInfo(request,email,"申请找回密码");
         }catch (Exception e){
             e.printStackTrace();
             msg="邮箱不存在？未知错误,联系管理员吧。";
         }
         map.put("msg",msg);
         return map;
     }*/
	
	/*
    @RequestMapping(value = "/user/reset_password",method = RequestMethod.GET)
    public ModelAndView checkResetLink(@RequestParam String sid,
		@RequestParam String email){
      ModelAndView model = new ModelAndView("error");
      String msg = "";
      if(sid.equals("") || email.equals("")){
          msg="链接不完整,请重新生成";
          model.addObject("msg",msg) ;
          //logInfo(email,"找回密码链接失效");
          return model;
     }
     user = userservice.findUsersByUserEmail(email);
     if(user == null){
         msg = "链接错误,无法找到匹配用户,请重新申请找回密码.";
         model.addObject("msg",msg) ;
         //logInfo(email,"找回密码链接失效");
         return model;
     }
     Timestamp outDate = user.getRegisterDate();
     if(outDate.getTime() <= System.currentTimeMillis()){         //表示已经过期
         msg = "链接已经过期,请重新申请找回密码.";
         model.addObject("msg",msg) ;
         //logInfo(email,"找回密码链接失效");
         return model;
     }
     String key = user.getEmail()+"$"+outDate.getTime()/1000*1000+"$"+user.getValidataCode();          //数字签名
     String digitalSignature = MD5.MD5Encode(key);
     System.out.println(key+"\t"+digitalSignature);
     if(!digitalSignature.equals(sid)) {
         msg = "链接不正确,是否已经过期了?重新申请吧";
         model.addObject("msg",msg) ;
         //logInfo(email,"找回密码链接失效");
         return model;
     }
     model.setViewName("user/reset_password");  //返回到修改密码的界面
     model.addObject("userName",email);
     return model;
 }*/
}