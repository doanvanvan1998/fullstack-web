package com.example.fullstack_servelet;

import com.example.fullstack_servelet.entities.Product;
import com.example.fullstack_servelet.utils.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "add_product" ,value = "/add_product")
public class AddProductServlet  extends HttpServlet {
    private DBConnect dbConnect = new DBConnect();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("dfdfdfds");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int soluong = Integer.parseInt( req.getParameter("soluong"));
        Product product = new Product(name,soluong);
        Connection connection = dbConnect.openConnect();
        String sql ="Insert into shoppee.product(name,soluong) values(?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,product.getName());
            preparedStatement.setInt(2,product.getSoluong());
            preparedStatement.execute();
            resp.sendRedirect("product");
        }catch (Exception e){
            System.out.println();
        }


        System.out.println("helllll");
    }
}
