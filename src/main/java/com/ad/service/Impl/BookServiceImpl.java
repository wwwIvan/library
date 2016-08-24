package com.ad.service.Impl;

import com.ad.dao.BookMapper;
import com.ad.model.Attachment;
import com.ad.model.Book;
import com.ad.service.AttachmentService;
import com.ad.service.BookService;
import com.ad.util.BaseMapper;
import com.ad.util.FileUploadUtil;
import com.ad.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.UUID;

/**
 * Created by Ivan on 2016/8/5.
 */
@Service
public class BookServiceImpl extends BaseServiceImpl<Book> implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Autowired
    private AttachmentService attachmentService;

    protected BaseMapper<Book> getBaseMapper() {
        return bookMapper;
    }

    public void update(Book book, MultipartFile picture) {
        if(picture != null){
            FileUploadUtil.uploadBookPicture(picture,book);
        }
        List<String> pics = StringUtil.getImgStr(book.getIntro());
        List<Attachment> alist=attachmentService.findByPid(book.getB_id());
        for (Attachment attachment:alist){
            if (! pics.contains(attachment.getFileName())){
                FileUploadUtil.deleteFile(FileUploadUtil.ATTACHMENT_PATH, attachment.getFileName());
                this.attachmentService.delete(attachment);
            }
        }
        for (String pictureName:pics){
            Attachment attachment=attachmentService.selectByPrimaryKey(pictureName);
            if (attachment!=null){
                attachment.setPid(book.getB_id());
                this.attachmentService.updateByPrimaryKey(attachment);
            }
        }
        bookMapper.update(book);
    }

    @Override
    public void deleteByForeignKey(Long bt_id) {
        bookMapper.deleteByForeignKey(bt_id);
    }

    @Override
    public List<Book> selectBookByForeignKey(Long bt_id) {
        return bookMapper.selectBookByForeignKey(bt_id);
    }

    @Override
    public Book selectBookFetchBookType(Long b_id) {
        return bookMapper.selectBookFetchBookType(b_id);
    }

    public void add(Book book, MultipartFile picture) {
        if(picture != null) {
            FileUploadUtil.uploadBookPicture(picture,book);
        }
        book.setB_id(UUID.randomUUID().toString());
        // 切割文章内用获取图片名称
        List<String> pics = StringUtil.getImgStr(book.getIntro());
        for (String pictureName:pics){
            Attachment attachment=attachmentService.selectByPrimaryKey(pictureName);
            if (attachment!=null){
                attachment.setPid(book.getB_id());
                this.attachmentService.updateByPrimaryKey(attachment);
            }
        }
        bookMapper.add(book);
    }
}
