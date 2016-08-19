package com.ad.controller.excel;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Ivan on 2016/8/19.
 */
@Controller
@RequestMapping(value = "/excel")
public class ExcelController {

    @RequestMapping(value = "/upload")
    public String upload(MultipartFile file){

        return "";
    }

    @RequestMapping(value = "/download")
    public ResponseEntity<byte[]> download(HttpSession session) throws IOException{
        byte[] body = null;
        ServletContext servletContext = session.getServletContext();
        InputStream in = servletContext.getResourceAsStream("/resources/file/");
        body = new byte[in.available()];
        in.read(body);

        HttpHeaders header = new HttpHeaders();
        header.add("Content-Disposition","attachment;filename=");

        HttpStatus statusCode = HttpStatus.OK;

        ResponseEntity<byte[]> responseEntity = new ResponseEntity<byte[]>(body,header,statusCode);
        return responseEntity;
    }

}
