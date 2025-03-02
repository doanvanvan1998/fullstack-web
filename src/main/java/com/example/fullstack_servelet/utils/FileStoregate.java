package com.example.fullstack_servelet.utils;

import javax.servlet.http.Part;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileStoregate {

    public void saveFile(Part filePart){
        String directoryPath = "C:\\Users\\PC\\Desktop\\imges\\"; // Change to your desired directory
        InputStream inputStream = null;
        try {
            if (filePart != null) {

                inputStream
                        = filePart.getInputStream();
            }







        }catch (Exception e){

        }



//        String fileName = file.getName();
//        Path path = file.toPath();
//        File directory = new File(directoryPath);
//        if (!directory.exists()) {
//            directory.mkdirs(); // Create the directory
//        }
//        File final_path = new File(directoryPath+fileName);
//
//
//        try (FileOutputStream fosFor = new FileOutputStream(final_path)) {
//            byte[] bytes = Files.readAllBytes(path);
//            fosFor.write(bytes);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }

}
