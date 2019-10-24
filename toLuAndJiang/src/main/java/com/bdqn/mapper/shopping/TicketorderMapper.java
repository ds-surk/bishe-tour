package com.bdqn.mapper.shopping;

import com.bdqn.pojo.shopping.Ticketorder;

public interface TicketorderMapper {

    Ticketorder selectByPrimaryKey(Integer uid,Integer ticketnumber);

}