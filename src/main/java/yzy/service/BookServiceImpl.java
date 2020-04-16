package yzy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yzy.dao.BookMapper;
import yzy.pojo.Book;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author YZY
 * @date 2020/4/15 - 21:02
 */
//@Service
public class BookServiceImpl implements IBookService{

//    @Autowired
    private BookMapper mapper;
//      添加set方法用于spring注入
    public void setMapper(BookMapper mapper) {
//        可以在这里横切事务
        this.mapper = mapper;
    }

    public int addBook(Book book) {
        return mapper.addBook(book);
    }

    public int deleteBook(int id) {
        return mapper.deleteBook(id);
    }

    public int updateBook(Book book) {
        return mapper.updateBook(book);
    }

    public List<Book> findBookByName(String name) {
        return mapper.findBookByName(name);
    }

    public List<Book> findAllBook() {
        return mapper.findAllBook();
    }

    public Book findBookById(int id) {
        return mapper.findBookById(id);
    }
}
