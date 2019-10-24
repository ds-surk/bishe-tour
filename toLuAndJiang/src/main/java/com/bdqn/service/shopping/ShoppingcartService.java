/**
 * 
 */
package com.bdqn.service.shopping;

import java.util.List;

import com.bdqn.pojo.shopping.Shoppingcart;

/**
 * @author Administrator
 *
 */
public interface ShoppingcartService {
	
	List<Shoppingcart> select(Integer uid);
	
	int delete(Integer shoppingnumber);
	
}
