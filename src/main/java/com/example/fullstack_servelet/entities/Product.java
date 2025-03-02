package com.example.fullstack_servelet.entities;

public class Product {
    private int id ;
    private String name;
    private  int soluong;
    private String file_name;

    public Product() {
    }

    public Product(String name, int soluong) {
        this.name = name;
        this.soluong = soluong;
    }

    public Product( String name, int soluong, String file_name) {
        this.name = name;
        this.soluong = soluong;
        this.file_name = file_name;
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

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }
}
