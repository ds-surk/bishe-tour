package com.bdqn.service.impl.shopping;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.shopping.ShoppingcartMapper;
import com.bdqn.pojo.shopping.Shoppingcart;
import com.bdqn.service.shopping.ShoppingcartService;

@Service
public class ShoppingcartServiceImpl implements ShoppingcartService{
	
	@Autowired
	ShoppingcartMapper shoppingcartMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Shoppingcart> select(Integer uid) {
		// TODO Auto-generated method stub
		return shoppingcartMapper.selectByPrimaryKey(uid);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public int delete(Integer shoppingnumber) {
		// TODO Auto-generated method stub
		return shoppingcartMapper.deleteByPrimaryKey(shoppingnumber);
	}
}
