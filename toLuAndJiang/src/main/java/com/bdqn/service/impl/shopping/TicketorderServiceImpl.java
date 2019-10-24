package com.bdqn.service.impl.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.shopping.TicketorderMapper;
import com.bdqn.pojo.shopping.Ticketorder;
import com.bdqn.service.shopping.TicketorderService;

@Service
public class TicketorderServiceImpl implements TicketorderService {
	
	@Autowired
	TicketorderMapper ticketorderMapper;
	
	@Override
	public Ticketorder select(Integer uid, Integer ticketnumber) {
		// TODO Auto-generated method stub
		return ticketorderMapper.selectByPrimaryKey(uid, ticketnumber);
	}

}
