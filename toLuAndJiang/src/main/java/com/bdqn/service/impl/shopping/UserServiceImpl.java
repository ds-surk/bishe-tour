package com.bdqn.service.impl.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.shopping.UserMapper;
import com.bdqn.pojo.shopping.User;
import com.bdqn.service.shopping.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public User select(Integer uid) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(uid);
	}

	@SuppressWarnings("unchecked")
	@Override
	public int update(Double money,Integer uid) {
		// TODO Auto-generated method stub
		return userMapper.updateMoney(money,uid);
	}

}
