package com.bdqn.mapper.flight;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.flight.SpecialTicket;
import com.bdqn.pojo.flight.SpecialTicketExample;

public interface SpecialTicketMapper {
    long countByExample(SpecialTicketExample example);

    int deleteByExample(SpecialTicketExample example);

    int deleteByPrimaryKey(Integer flightid);

    int insert(SpecialTicket record);

    int insertSelective(SpecialTicket record);

    List<SpecialTicket> selectByExample(SpecialTicketExample example);

    SpecialTicket selectByPrimaryKey(Integer flightid);

    int updateByExampleSelective(@Param("record") SpecialTicket record, @Param("example") SpecialTicketExample example);

    int updateByExample(@Param("record") SpecialTicket record, @Param("example") SpecialTicketExample example);

    int updateByPrimaryKeySelective(SpecialTicket record);

    int updateByPrimaryKey(SpecialTicket record);
    
    List<SpecialTicket> getSpecialTicketsList();
    
    public SpecialTicket getAreaMenu(@Param(value="companyid")Integer companyid,@Param(value="APKName")String APKName)throws Exception;

	SpecialTicket getAreaMenu(Integer companyid);

	List<SpecialTicket> getFlightList(@Param(value="flightnumber")String flightNumber
			,@Param(value="roundtype") String roundType
			,@Param(value="begincity") String beginCity
			,@Param(value="destination") String destination
			,@Param(value="chufaTime") String chufaTime
			,@Param(value="chufaCompany") String chufaCompany) throws Exception;
}