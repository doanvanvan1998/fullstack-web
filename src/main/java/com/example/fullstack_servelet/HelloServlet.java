package com.example.fullstack_servelet;

import com.example.fullstack_servelet.dto.ProductDTO;
import com.example.fullstack_servelet.entities.Product;
import com.example.fullstack_servelet.entities.Size;
import com.example.fullstack_servelet.service.ProductService;
import com.example.fullstack_servelet.utils.DBConnect;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private DBConnect dbConnect = new DBConnect();
    private ProductService productService = new ProductService();


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Connection connection = dbConnect.openConnect();
        List<Size> list_size = new ArrayList<>();
        String sql ="SELECT * FROM shoppee.tbl_size";

        //list size
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Size size = new Size();
                size.setId(resultSet.getInt("id"));
                size.setName(resultSet.getString("name"));
                size.setStatus(resultSet.getString("status"));
                list_size.add(size);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        //list product
        List<ProductDTO> list_productDto = productService.getAll();




        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        request.setAttribute("list_size" ,list_size);
        request.setAttribute("list_product" ,list_productDto);

        requestDispatcher.forward(request,response);
    }

    public void destroy() {
    }
}