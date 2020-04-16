package yzy.dao;

import org.springframework.stereotype.Repository;
import yzy.pojo.Book;

import java.util.List;

/**
 * @author YZY
 * @date 2020/4/15 - 20:53
 */

@Repository
public interface BookMapper {

//    增
    int addBook(Book book);
//    删
    int deleteBook(int id);
//    改
    int updateBook(Book book);
//    查
    List<Book> findBookByName(String name);

    List<Book> findAllBook();

    Book findBookById(int id);

}
