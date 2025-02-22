package com.example.fullstack_servelet;

import com.example.fullstack_servelet.entities.Product;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "search-product" ,value = "/search-product")
public class SearchServlet extends HttpServlet {
    private Gson gson = new Gson();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String txt_search =  req.getParameter("name");
        List<Product> list = new ArrayList<>();
       // ham xử lý search theo tên

        System.out.println(txt_search);
        String productJsonString = this.gson.toJson(list);

        PrintWriter out = resp.getWriter();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        out.print(productJsonString);
        out.flush();

    }
}
