package com.study.bean;

import java.util.Date;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:46
 * @Description: com.study.bean
 * @version: 1.0
 */
public class Book {
    private Integer id; // 书籍ID
    private String name; // 书籍名称
    private Double price; // 书籍价格
    private String author; // 作者
    private String publisher; // 出版社
    private Date pubDate; // 出版时间
    private String description; // 描述
    private Category esCategory; // 所属分类

    public Book() {
    }

    public Book(Integer id, String name, Double price, String author, String publisher, Date pubDate, String description, Category esCategory) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.author = author;
        this.publisher = publisher;
        this.pubDate = pubDate;
        this.description = description;
        this.esCategory = esCategory;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Date getPubDate() {
        return pubDate;
    }

    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getEsCategory() {
        return esCategory;
    }

    public void setEsCategory(Category esCategory) {
        this.esCategory = esCategory;
    }

    @Override
    public String toString() {
        return "EsBook{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", author='" + author + '\'' +
                ", publisher='" + publisher + '\'' +
                ", pubDate=" + pubDate +
                ", description='" + description + '\'' +
                ", esCategory=" + esCategory +
                '}';
    }
}
