package com.bdqn.service.shopping;

import com.bdqn.pojo.shopping.User;

public interface UserService {
	
	User select(Integer uid);
	
	int update(Double money,Integer uid);
}
