package com.bdqn.service.strategy.impl.strategy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.strategy.PhotoMapper;
import com.bdqn.pojo.strategy.Photo;
import com.bdqn.service.strategy.PhotosService;

@Service
public class PhotosServiceImpl implements PhotosService {
	
	@Autowired
	PhotoMapper photoMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Photo> list() {
		// TODO Auto-generated method stub
		@SuppressWarnings("rawtypes")
		List list = new ArrayList<>();
		list.add(photoMapper.selectByPrimaryKey(1));
		return list;
	} 

}
