package yzy.service;

import yzy.pojo.Book;

import java.util.List;

/**
 * @author YZY
 * @date 2020/4/15 - 21:09
 */
public interface IBookService {

    //    增
    int addBook(Book book);
    //    删
    int deleteBook(int id);
    //    改
    int updateBook(Book book);
    //    查
    List<Book> findBook(String name);

    List<Book> findAllBook();

    Book findBookById(int id);
}
