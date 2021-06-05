package com.study.bean;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:49
 * @Description: com.study.bean
 * @version: 1.0
 */
public class ShopAddress {
    private Integer id; // 编号
    private String receiveName; // 收货人姓名
    private String address; // 收货地址
    private String phone; // 收货人联系电话
    private Customer customer; // 所属用户

    public ShopAddress() {
    }

    public ShopAddress(Integer id, String receiveName, String address, String phone, Customer customer) {
        this.id = id;
        this.receiveName = receiveName;
        this.address = address;
        this.phone = phone;
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "EsShopAddress{" +
                "id=" + id +
                ", receiveName='" + receiveName + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", customer=" + customer +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getReceiveName() {
        return receiveName;
    }

    public void setReceiveName(String receiveName) {
        this.receiveName = receiveName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}

