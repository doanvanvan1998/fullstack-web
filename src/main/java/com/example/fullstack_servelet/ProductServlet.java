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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "product" ,value = "/product")
public class ProductServlet extends HttpServlet {
    private DBConnect dbConnect = new DBConnect();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection connection = dbConnect.openConnect();
        List<Product> list = new ArrayList<>();
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
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("product.jsp");
        req.setAttribute("list_product",list);
        requestDispatcher.forward(req,resp);
    }
}
