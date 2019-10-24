package com.bdqn.service.impl.flight;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.mapper.flight.SpecialTicketMapper;
import com.bdqn.pojo.flight.SpecialTicket;
import com.bdqn.service.flight.SpecialTicketService;

@Service
public class SpecialTicketServiceImpl implements SpecialTicketService {
	@Resource
	SpecialTicketMapper specialTicketMapper;

	@Override
	public SpecialTicket getFightByID(Integer flightID) {
		// TODO �Զ����ɵķ������
		return specialTicketMapper.selectByPrimaryKey(flightID);
	}



	@Override
	public List<SpecialTicket> getSpecialTicketsList() {
		// TODO �Զ����ɵķ������
		return specialTicketMapper.getSpecialTicketsList();
	}



	@Override
	public SpecialTicket getAreaMenu(Integer companyid) throws Exception {
		// TODO �Զ����ɵķ������
		return specialTicketMapper.getAreaMenu(companyid);
	}



	@Override
	public List<SpecialTicket> getFlightList(String flightNumber, String roundType, String beginCity,
			String destination, String chufaTime, String chufaCompany) throws Exception{
		// TODO �Զ����ɵķ������
		return specialTicketMapper.getFlightList(flightNumber, roundType, beginCity, destination, chufaTime,chufaCompany);
	}
	
	

}
