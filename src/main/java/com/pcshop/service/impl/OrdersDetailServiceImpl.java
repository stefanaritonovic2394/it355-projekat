/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.service.impl;

import com.pcshop.dao.OrdersDetailDao;
import com.pcshop.model.OrdersDetail;
import com.pcshop.service.OrdersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author stefa
 */
@Service
public class OrdersDetailServiceImpl implements OrdersDetailService {
    
    @Autowired
    private OrdersDetailDao ordersDetailDao;

    @Override
    public void addOrdersDetail(OrdersDetail ordersDetail) {
        ordersDetailDao.addOrdersDetail(ordersDetail);
    }
    
}
