package com.bdqn.service.impl.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.shopping.HotelorderMapper;
import com.bdqn.pojo.shopping.Hotelorder;
import com.bdqn.service.shopping.HotelorderService;

@Service
public class HotelorderServiceImpl implements HotelorderService {
	
	@Autowired
	HotelorderMapper hotelorderMapper;
	
	@Override
	public Hotelorder select(Integer uid, Integer hotelnumber) {
		// TODO Auto-generated method stub
		return hotelorderMapper.selectByPrimaryKey(uid, hotelnumber);
	}

}
