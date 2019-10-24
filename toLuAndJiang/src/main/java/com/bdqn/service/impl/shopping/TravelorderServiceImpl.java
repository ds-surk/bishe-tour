package com.bdqn.service.impl.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.travel.travelorderMapper;
import com.bdqn.pojo.travel.travelorder;
import com.bdqn.service.shopping.TravelorderService;

@Service
public class TravelorderServiceImpl implements TravelorderService {
	
	@Autowired
	travelorderMapper travelorderMapper;
	
	@Override
	public travelorder select(Integer uid, Integer travelnumber) {
		// TODO Auto-generated method stub
		return travelorderMapper.selectByPrimaryKey(uid, travelnumber);
	}

}
