package yzy.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import yzy.pojo.Book;
import yzy.service.BookServiceImpl;

import javax.servlet.http.HttpServletRequest;
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
    @Autowired
    HttpServletRequest request;

//    在增加书籍页面增加书籍
    @RequestMapping("/add")
    public String addBook(Book book){
        int i = bookService.addBook(book);
        if(i>0){
            request.getSession().setAttribute("msg","增加成功");
        }
        else {
            request.getSession().setAttribute("msg", "增加失败");
        }
//        return "forward:/book/findAllBook";
        return "redirect:/book/findAllBook";
    }


//    跳转 增加书籍页面
    @RequestMapping("/addBookPage")
    public String addBookPage(){
        return "addBook";
    }
//    跳转 修改书籍页面
    @RequestMapping("/updateBookPage")
    public String updateBookPage(int bookID){
        return "updateBook";
    }

//     跳转 书籍显示页面
    @RequestMapping("/findAllBook")
    public String  findAll(Model model){
        List<Book> allBook = bookService.findAllBook();
        model.addAttribute("book",allBook);
        return "findAllBook";
    }

//      修改书籍页面修改书籍


//      删除书籍
    @RequestMapping("/delete")
    public String deleteBook(int bookID){
        int i = bookService.deleteBook(bookID);
        if(i>0){
            request.getSession().setAttribute("msg","删除成功");
        }else
            request.getSession().setAttribute("msg","删除失败");

        return "forward:/book/findAllbook";
    }





}
