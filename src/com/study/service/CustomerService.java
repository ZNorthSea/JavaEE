package com.study.service;

import com.study.bean.Customer;
import com.study.exception.CustomerException;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/3 0003 - 06 - 03 - 0:08
 * @Description: com.study.service
 * @version: 1.0
 */
public interface CustomerService {
    Customer login(String name, String password);
}
