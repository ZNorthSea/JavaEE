package com.study.service.impl;

import com.study.bean.Customer;
import com.study.dao.CustomerDao;
import com.study.exception.CustomerException;
import com.study.service.CustomerService;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/3 0003 - 06 - 03 - 0:16
 * @Description: com.study.service.impl
 * @version: 1.0
 */
public class CustomerServiceImpl implements CustomerService {
    private CustomerDao customerDao;
    @Override
    public Customer login(String name, String password){
        Customer customer = customerDao.findCustomerByName(name);
        System.out.println("customer = " + customer);
        /*if (null == customer){
            throw new CustomerException("查无此人");
        } else if (password != customer.getPassword()){
            throw new CustomerException("密码错误");
        }*/
        return customer;
    }
}
