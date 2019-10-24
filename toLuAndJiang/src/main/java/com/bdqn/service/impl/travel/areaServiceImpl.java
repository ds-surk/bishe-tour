package com.bdqn.service.impl.travel;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.bdqn.mapper.travel.areaMapper;
import com.bdqn.pojo.travel.area;

import com.bdqn.service.travel.areaService;


@Service
public class areaServiceImpl implements areaService {

	@Resource
	private areaMapper areaMapper;


/*	@Override
	public travelmessage selectTravelMessage(Integer travelid) {
		travelmessage travelmessage=new travelmessage();
		travelmessage=travelmessageMapper.selectByPrimaryKey(travelid);
		return travelmessage;
	}*/


	/*@Override
	public List<travelmessage> getTravelMessageList() {
		// TODO Auto-generated method stub
		return travelmessageMapper.getTravelMessageList();
	}


	@Override
	public List<travelmessage> getDTravelMessageList() {
		// TODO Auto-generated method stub
		return travelmessageMapper.getDTravelMessageList();
	}


	@Override
	public List<travelmessage> getThemeTravelList() {
		// TODO Auto-generated method stub
		return travelmessageMapper.getThemeTravelList();
	}*/


	@Override
	public area selectByPrimaryKey1(String tfrom) {
		// TODO Auto-generated method stub
		return areaMapper.selectByPrimaryKey1(tfrom);
	}
	}


