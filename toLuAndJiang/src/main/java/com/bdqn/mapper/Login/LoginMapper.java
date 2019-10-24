package com.bdqn.mapper.Login;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.shopping.User;

public interface LoginMapper {
	//閫氳繃閭鑾峰彇鐢ㄦ埛骞剁櫥褰�
	public User findUsersByUserEmail(@Param("email")String email);
	
	//閭娉ㄥ唽鐢ㄦ埛
	public  void registerByUserEmailAndPassword(@Param("email")String email,
            @Param("password")String password,@Param("UID")String UID);
	
	//閫氳繃閭淇敼瀵嗙爜
	public int modifyPasswordByUserEmail(@Param("email") String email,
			@Param("newpassword") String newpassword);	
	
	/*//閫氳繃鎵嬫満鑾峰彇鐢ㄦ埛骞剁櫥褰�
	public User findUsersByUserPhone(@Param("phone")String phone);
	
	//鎵嬫満娉ㄥ唽鐢ㄦ埛
	public  void registerByUserPhoneAndPassword(@Param("phone")String phone,
            @Param("password")String password);
	
	//閫氳繃鎵嬫満淇敼瀵嗙爜
	int modifyPasswordByUserPhone(@Param("phone") String phone,
			@Param("newpassword") String newpassword);*/
}
