package com.bdqn.service.flight;

import java.util.List;

import com.bdqn.pojo.flight.OrderState;



public interface OrderStateService {
	/**
	 * ����typeCode��ѯ��Ӧ�������ֵ��б�
	 * @param typeCode
	 * @return
	 * @throws Exception
	 */
	public List<OrderState> getOrderStateList(String typeCode)throws Exception;
}
