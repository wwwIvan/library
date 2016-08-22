package com.ad.controller.excel;

import com.ad.model.Book;
import com.ad.service.BookService;
import com.ad.util.ExportExcel;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ivan on 2016/8/19.
 */
@Controller
@RequestMapping(value = "/excel")
public class ExcelController {

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/uploadUI")
    public String uploadUI(){
        return "excel/uploadUI";
    }

    /**
     * Excel数据导入
     * @param excel
     * @return
     */
    @RequestMapping(value = "/upload")
    public String upload(MultipartFile excel) throws IOException{
        RequestAttributes ar = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = ((ServletRequestAttributes) ar).getRequest();
        String uploadPath =request.getSession().getServletContext().getRealPath("")+ "/resources/file/excel";

        //文件流指向excel文件
        InputStream fin= excel.getInputStream();
        HSSFWorkbook workbook=new HSSFWorkbook(fin);//创建工作薄
        HSSFSheet sheet=workbook.getSheetAt(0);//得到工作表
        HSSFRow row=null;//对应excel的行
        HSSFCell cell=null;//对应excel的列

        int totalRow=sheet.getLastRowNum();//得到excel的总记录条数
        //以下的字段一一对应数据库表的字段
        String b_id="";
        String name="";
        String author="";
        String publicationDate="";
        String intro="";
        Long bt_id = 0L;
        String picture="";

        for(int i=1;i<=totalRow;i++){
            row=sheet.getRow(i);
            if(row.getCell(0)!=null){
                row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
                b_id=row.getCell(0).getStringCellValue();
            }
            cell=row.getCell(1);
            name=cell.getRichStringCellValue().toString();
            cell=row.getCell(2);
            author=cell.getRichStringCellValue().toString();
            cell=row.getCell(3);
            publicationDate=cell.getRichStringCellValue().toString();
            cell=row.getCell(4);
            intro=cell.getRichStringCellValue().toString();
            if(row.getCell(5)!=null){
                row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
                picture=row.getCell(5).getStringCellValue();
            }
            if(row.getCell(6)!=null){
                row.getCell(6).setCellType(Cell.CELL_TYPE_STRING);
                bt_id=Long.parseLong(row.getCell(6).getStringCellValue());
            }
            Book book = new Book(b_id,name,author,publicationDate,intro,picture,bt_id);
            bookService.insert(book);
        }

        return "book/list";
    }

    /**
     * Excel数据导出
     * @param response
     * @throws IOException
     */
    @RequestMapping(value = "/download")
    public String download(HttpSession session, HttpServletResponse response) throws IOException{
        List<Book> books = bookService.selectAll();
        //调用ExportExcel构建一张Excel表
        ExportExcel<Book> ex = new ExportExcel<Book>();
        response.setContentType("octets/stream");
        response.addHeader("Content-Disposition","attachment;filename=library.xlsx");
        String[] headers = { "图书编号", "图书名称", "图书作者", "图书出版日期","图书简介", "封面图片","图书类型" };
        //存储每一行的表中数据
        List<Book> dataset = new ArrayList<Book>();
        OutputStream out = response.getOutputStream();
        for(Book b:books){
            byte[] body = null;
            File file = new File(session.getServletContext().getRealPath("/resources/file/book/"+b.getPicture()));
            BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
            body = new byte[bis.available()];
            while((bis.read(body)) != -1) {
                //将图片数据存放到缓冲数组中
            }
            dataset.add(new Book(b.getB_id(),b.getName(),b.getAuthor(),b.getPublicationDate(),b.getIntro(),b.getPicture(),b.getBt_id()));
        }
        ex.exportExcel(headers, dataset, out);
        out.close();

        return "book/list";
    }

}
