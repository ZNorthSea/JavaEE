package com.study.bean;

import java.awt.print.Book;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:48
 * @Description: com.study.bean
 * @version: 1.0
 */
public class OrderLine {
    private Integer id;	// 订单项编号
    private Integer number; // 购买数量
    private Double cost;	 // 总价
    private Book book; // 购买的书籍
    private OrderForm orderForm; // 所属的订单

    public OrderLine() {
    }

    public OrderLine(Integer id, Integer number, Double cost, Book book, OrderForm orderForm) {
        this.id = id;
        this.number = number;
        this.cost = cost;
        this.book = book;
        this.orderForm = orderForm;
    }

    @Override
    public String toString() {
        return "EsOrderLine{" +
                "id=" + id +
                ", number=" + number +
                ", cost=" + cost +
                ", book=" + book +
                ", orderForm=" + orderForm +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public OrderForm getOrderForm() {
        return orderForm;
    }

    public void setOrderForm(OrderForm orderForm) {
        this.orderForm = orderForm;
    }
}
