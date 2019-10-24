package com.bdqn.service.impl.flight;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.mapper.flight.OrderStateMapper;
import com.bdqn.pojo.flight.OrderState;
import com.bdqn.service.flight.OrderStateService;

@Service
public class OrderStateServiceImpl implements OrderStateService {
	@Resource
	private OrderStateMapper mapper;
	
	@Override
	public List<OrderState> getOrderStateList(String typeCode) throws Exception {
		// TODO 自动生成的方法存根
		return mapper.getOrderStateList(typeCode);
	}

}
