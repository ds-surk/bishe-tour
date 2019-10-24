package com.bdqn.service.Login;
import org.apache.ibatis.annotations.Param;
import com.bdqn.pojo.shopping.User;

public interface LoginService {
	//通过邮箱获取用户
	public User findUsersByUserEmail(@Param("email")String email);	
	//注册邮箱账号
	public void Regist(String email,String password,String UID);
	 //用户使用邮箱登录
	public User login(String email,String password);	
	//修改已登录用户的密码
	public void modifyPasswordByUserEmail(String email,String newpassword);
	//用户忘记密码修改密码
/*	public void forgetPassword(User user);*/
}
