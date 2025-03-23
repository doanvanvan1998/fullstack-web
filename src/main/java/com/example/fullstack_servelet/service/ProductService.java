package com.example.fullstack_servelet.service;

import com.example.fullstack_servelet.dto.ProductDTO;
import com.example.fullstack_servelet.entities.Product;
import com.example.fullstack_servelet.entities.Size;
import com.example.fullstack_servelet.utils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private DBConnect dbConnect = new DBConnect();
    public List<ProductDTO> getAll(){
        Connection connection = dbConnect.openConnect();
        List<ProductDTO> list_productDto = new ArrayList<>();
        List<Product> list = new ArrayList<>();
        //getall list product
        String sql ="SELECT * FROM shoppee.product;";
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Product product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
                product.setSoluong(resultSet.getInt("soluong"));
                product.setFile_name(resultSet.getString("file_name"));
                list.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        for (Product product: list) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setId(product.getId());
            productDTO.setFile_name(product.getFile_name());
            String sql_1 ="select ts.name from product p inner join product_size ps join tbl_size ts  on p.id = ps.id_product and ps.id_size = ts.id where p.id = ?";
            try {
                List<String> sizes = new ArrayList<>();
                PreparedStatement preparedStatement = connection.prepareStatement(sql_1);
                preparedStatement.setInt(1,product.getId());
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    sizes.add(resultSet.getString("name"));
                }
                productDTO.setList_size(sizes);
                list_productDto.add(productDTO);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

    return list_productDto;

    }



}
