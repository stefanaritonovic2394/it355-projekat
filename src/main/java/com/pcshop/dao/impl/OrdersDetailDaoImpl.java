/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.dao.impl;

import com.pcshop.dao.OrdersDetailDao;
import com.pcshop.model.OrdersDetail;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author stefa
 */
@Repository
@Transactional
public class OrdersDetailDaoImpl implements OrdersDetailDao {
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addOrdersDetail(OrdersDetail ordersDetail) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(ordersDetail);
        session.flush();
    }
    
}
