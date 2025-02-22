package com.example.fullstack_servelet.entities;

public class Product {
    private int id ;
    private String name;
    private  int soluong;

    public Product() {
    }

    public Product(String name, int soluong) {
        this.name = name;
        this.soluong = soluong;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
}
