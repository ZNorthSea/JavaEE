package com.study.bean;

import java.util.List;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:48
 * @Description: com.study.bean
 * @version: 1.0
 */
public class Customer {
    private Integer id; // 编号
    private String name; // 用户名
    private String password; // 密码
    private String zip; // 邮编
    private String telephone; // 电话
    private String email; // 邮箱
    private List<ShopAddress> address; // 用户的所有收货地址


    public Customer() {
    }

    public Customer(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public Customer(Integer id, String name, String password, String zip, String telephone, String email, List<ShopAddress> address) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.zip = zip;
        this.telephone = telephone;
        this.email = email;
        this.address = address;
    }

    @Override
    public String toString() {
        return "EsCustomer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", zip='" + zip + '\'' +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                ", shopAddress=" + address +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<ShopAddress> getShopAddress() {
        return address;
    }

    public void setShopAddress(List<ShopAddress> shopAddress) {
        this.address = shopAddress;
    }
}
