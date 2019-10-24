package com.bdqn.service.flight;

import java.util.List;

import com.bdqn.pojo.flight.OrderState;



public interface OrderStateService {
	/**
	 * 根据typeCode查询相应的数据字典列表
	 * @param typeCode
	 * @return
	 * @throws Exception
	 */
	public List<OrderState> getOrderStateList(String typeCode)throws Exception;
}
