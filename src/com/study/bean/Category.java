package com.study.bean;

import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: zhaotj
 * @Date: 2021/6/2 0002 - 06 - 02 - 23:48
 * @Description: com.study.bean
 * @version: 1.0
 */
public class Category {
    private Integer id;
    private String name;
    private String description;
    private Category parent;
    private List<Category> child = new ArrayList<>();

    public Category() {
    }

    public Category(Integer id, String name, String description, Category parent, List<Category> child) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.parent = parent;
        this.child = child;
    }

    @Override
    public String toString() {
        return "EsCategory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", parent=" + parent +
                ", child=" + child +
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getParent() {
        return parent;
    }

    public void setParent(Category parent) {
        this.parent = parent;
    }

    public List<Category> getChild() {
        return child;
    }

    public void setChild(List<Category> child) {
        this.child = child;
    }
}
