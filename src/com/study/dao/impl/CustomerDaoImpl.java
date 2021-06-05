package com.study.dao.impl;

import com.study.bean.Customer;
import com.study.dao.BaseDao;
import com.study.dao.CustomerDao;
import org.junit.Test;

import java.util.List;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/3 0003 - 06 - 03 - 0:11
 * @Description: com.study.dao.impl
 * @version: 1.0
 */
public class CustomerDaoImpl extends BaseDao implements CustomerDao {
    public Customer findCustomerByName(String name) {
        String sql = "select id,name,password,zip,address,telephone,email from es_customer where name = ?";
        List<Customer> customers = baseQuery(Customer.class, sql,"qqq");
        System.out.println(customers.get(0));
        return customers.get(0);
    }
}
