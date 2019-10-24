package com.bdqn.mapper.flight;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.flight.OrderState;
import com.bdqn.pojo.flight.OrderStateExample;

public interface OrderStateMapper {
	public List<OrderState> getOrderStateList(@Param("typeCode")String typeCode)throws Exception;
}