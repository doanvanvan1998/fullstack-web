package com.example.fullstack_servelet;

import com.example.fullstack_servelet.entities.Product;
import com.example.fullstack_servelet.utils.DBConnect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "get_product" ,value = "/get_product")
public class GetProductByIdSevrlet  extends HttpServlet {
    private DBConnect dbConnect = new DBConnect();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       Integer id  = Integer.parseInt(req.getParameter("id"));
        Connection connection = dbConnect.openConnect();
        List<Product> list = new ArrayList<>();
        String sql ="SELECT * FROM shoppee.product where id = ?";
        Product product = new Product();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Product item = new Product();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setSoluong(resultSet.getInt("soluong"));
                product = item;
                break;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("detail_product.jsp");
        req.setAttribute("product",product);
        requestDispatcher.forward(req,resp);

        System.out.println("fgvj");
    }
}
