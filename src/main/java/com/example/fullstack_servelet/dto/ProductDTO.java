package com.example.fullstack_servelet.dto;

import java.util.List;

public class ProductDTO{
    private int id ;
    private String name;
    private  int soluong;
    private String file_name;

    private List<String> list_size;

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

    public List<String> getList_size() {
        return list_size;
    }

    public void setList_size(List<String> list_size) {
        this.list_size = list_size;
    }
}
