package com.bdqn.service.impl.travel;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.bdqn.mapper.travel.travelmessageMapper;
import com.bdqn.pojo.travel.travelmessage;
import com.bdqn.service.travel.travelIndexService;

@Service
public class travelIndexServiceImpl implements travelIndexService {

	@Resource
	private travelmessageMapper travelmessageMapper;


/*	@Override
	public travelmessage selectTravelMessage(Integer travelid) {
		travelmessage travelmessage=new travelmessage();
		travelmessage=travelmessageMapper.selectByPrimaryKey(travelid);
		return travelmessage;
	}*/


	@Override
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
	}


	@Override
	public List<travelmessage> getAttractions() {
		// TODO Auto-generated method stub
		return travelmessageMapper.getAttractions();
	}
	
	 public List<travelmessage> getTravelList(String travelname,Integer price,
			 String supplier,String country,
			 String TFrom,String TDay,
			 String Mouth,String Shifts) throws Exception{
				return travelmessageMapper.getTravelList(travelname, price, supplier, country, TFrom, TDay, Mouth, Shifts);
		 
	 }
	}


