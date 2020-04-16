package yzy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import yzy.pojo.Book;
import yzy.service.BookServiceImpl;

import java.util.List;

/**
 * @author YZY
 * @date 2020/4/16 - 11:27
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookServiceImpl bookService;

    @RequestMapping("/add")
    public String add(@RequestParam() Book book, Model model){
        int i = bookService.addBook(book);
//        增加成功
        if(i>0){
            model.addAttribute("msg","增加成功");
            Book bookById = bookService.findBookById(book.getBookID());
            model.addAttribute("book",bookById);
        }
        model.addAttribute("msg","增加失败");
        return "addBook";
    }

    @RequestMapping("/findAll")
    public String  findAll(Model model){
        List<Book> allBook = bookService.findAllBook();
        model.addAttribute("book",allBook);
        return "findAllBook";
    }

}
