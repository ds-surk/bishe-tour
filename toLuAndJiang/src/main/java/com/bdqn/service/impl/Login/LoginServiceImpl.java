package com.bdqn.service.impl.Login;
import java.util.Date;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.bdqn.common.MD5;
import com.bdqn.mapper.Login.LoginMapper;
import com.bdqn.pojo.shopping.User;
import com.bdqn.service.Login.LoginService;
 
@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Resource
	private LoginMapper mapper;
	
	User user=new User();
	@Override
	public User findUsersByUserEmail(String email) {
		user=mapper.findUsersByUserEmail(email);
		if(user!=null) {
			 String pwd=user.getPassword();
				return user;
		}
	   return null;
	}

	@Override
	public User login(String email,String password){
		 user=mapper.findUsersByUserEmail(email);
		 //瀵嗙⒓椹楄瓑
		 if(user!=null) {
			if(!user.getPassword().equals(password)) {
				return null;
			}
			return user;
		 }
		 return null;
	}
	//娉ㄥ唽閭璐﹀彿
	 public void Regist(String email,String password,String UID) {
			 mapper.registerByUserEmailAndPassword(email,password,UID);			
	  }
	
	//淇敼鐢ㄦ埛鐨勫瘑鐮�
	public void modifyPasswordByUserEmail(String email,String newpassword) {				
		mapper.modifyPasswordByUserEmail(email,newpassword);
	}

	
/*	public void forgetPassword(User user) {
		//this.modifyPasswordByUserEmail(email, newpassword);
		//閾炬帴
		String href="https://www.baidu.com";
		//鍙戦�侀偖浠�
		mailService.sendCodeaMail(user.getEmail(), href);
		
		
	}*/
}
