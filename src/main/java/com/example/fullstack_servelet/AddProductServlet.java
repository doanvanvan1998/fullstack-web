package com.example.fullstack_servelet;

import com.example.fullstack_servelet.entities.Product;
import com.example.fullstack_servelet.utils.DBConnect;
import com.example.fullstack_servelet.utils.FileStoregate;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "add_product" ,value = "/add_product")
@MultipartConfig
public class AddProductServlet  extends HttpServlet {
    private DBConnect dbConnect = new DBConnect();
    private FileStoregate storegate = new FileStoregate();
    private static final String UPLOAD_LOCATION_PROPERTY_KEY="C:\\Users\\PC\\Documents\\demo\\Fullstack_Servelet\\target\\Fullstack_Servelet-1.0-SNAPSHOT\\image";
    private String uploadsDirName;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("dfdfdfds");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int soluong = Integer.parseInt(req.getParameter("soluong"));
        String file_name = "";

        try {
            Collection<Part> parts = req.getParts();
            for (Part part : parts) {
               if (part.getName().equals("file")){
                   file_name = System.currentTimeMillis()+ "_"
                           + getFilename(part);
                   File save = new File(UPLOAD_LOCATION_PROPERTY_KEY, file_name);

                   final String absolutePath = save.getAbsolutePath();
                   part.write(absolutePath);
               }
            }
        } catch (FileUploadException e) {
            try {
                throw new ServletException("Cannot parse multipart request.", e);
            } catch (ServletException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
        }





        //lưu vào 1 folder nào đó
        //lưu tên ảnh vào csdl
        // storegate.saveFile(filePart);


        Product product = new Product(name, soluong,file_name);
        Connection connection = dbConnect.openConnect();
        String sql = "Insert into shoppee.product(name,soluong,file_name) values(?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setInt(2, product.getSoluong());
            preparedStatement.setString(3,product.getFile_name());
            preparedStatement.execute();

            req.setAttribute("result", 20000);
            resp.sendRedirect("product");
        } catch (Exception e) {
            System.out.println();
        }


        System.out.println("helllll");
    }

    private static String getFilename(Part part) {
        // courtesy of BalusC : http://stackoverflow.com/a/2424824/281545
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String filename = cd.substring(cd.indexOf('=') + 1).trim()
                        .replace("\"", "");
                return filename.substring(filename.lastIndexOf('/') + 1)
                        .substring(filename.lastIndexOf('\\') + 1); // MSIE fix.
            }
        }
        return null;
    }
}
