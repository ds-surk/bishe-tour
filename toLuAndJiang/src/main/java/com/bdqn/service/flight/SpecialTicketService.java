package com.bdqn.service.flight;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.bdqn.pojo.flight.SpecialTicket;


@Service
public interface SpecialTicketService {
	/*SpecialTicket selectByPrimaryKey(Integer flightID);*/
	 SpecialTicket getFightByID(Integer flightID);
	 public List<SpecialTicket> getSpecialTicketsList();
		/**
		 * 根据id获取app详细信息
		 * @param id
		 * @return
		 * @throws Exception
		 */
		public SpecialTicket getAreaMenu(@Param(value="companyid")Integer companyid)throws Exception;
		List<SpecialTicket> getFlightList(String flightNumber, String roundType, String beginCity, String destination,
				String chufaTime, String chufaCompany) throws Exception;
}
