package com.study.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:48
 * @Description: com.study.bean
 * @version: 1.0
 */
public class OrderForm {
    private Integer id; // 订单号
    private Double cost; // 订单金额
    private Date orderDate; // 下单时间
    private ShopAddress shopAddress;// 收货地址
    private String payStatus; // 支付状态
    private Customer customer; // 所属用户
    private List<OrderLine> orderLines = new ArrayList<>(); // 所有的订单项

    public OrderForm() {
    }

    public OrderForm(Integer id, Double cost, Date orderDate, ShopAddress shopAddress, String payStatus, Customer customer, List<OrderLine> orderLines) {
        this.id = id;
        this.cost = cost;
        this.orderDate = orderDate;
        this.shopAddress = shopAddress;
        this.payStatus = payStatus;
        this.customer = customer;
        this.orderLines = orderLines;
    }

    @Override
    public String toString() {
        return "EsOrderForm{" +
                "id=" + id +
                ", cost=" + cost +
                ", orderDate=" + orderDate +
                ", shopAddress=" + shopAddress +
                ", payStatus='" + payStatus + '\'' +
                ", customer=" + customer +
                ", orderLines=" + orderLines +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public ShopAddress getShopAddress() {
        return shopAddress;
    }

    public void setShopAddress(ShopAddress shopAddress) {
        this.shopAddress = shopAddress;
    }

    public String getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(String payStatus) {
        this.payStatus = payStatus;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<OrderLine> getOrderLines() {
        return orderLines;
    }

    public void setOrderLines(List<OrderLine> orderLines) {
        this.orderLines = orderLines;
    }
}
