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




//    跳转 增加书籍页面
    @RequestMapping("/addBookPage")
    public String addBookPage(){
        return "addBook";
    }


//     跳转 书籍显示页面
    @RequestMapping("/findAllBook")
    public String  findAll(Model model){
        List<Book> allBook = bookService.findAllBook();
//        model.addAttribute("msg","加载完成");
        model.addAttribute("book",allBook);
        return "findAllBook";
    }

//  跳转到 查询书籍页面
    @RequestMapping("/queryBookPage")
    public String queryBookPage(){
        return "queryBook";
    }


//      跳转 修改书籍页面
    @RequestMapping("/updateBookPage")
    public String updateBookPage(int bookID,Model model){
//     通过表单传送的ID来查询书籍。
//     那么我修改完之后想在这个页面现实修改后的信息该怎么接收到bookID呢，毕竟修改完没有form提交这个流程，就接收不到参数了，只能再创建一个方法用于修改后的显示
        Book book = bookService.findBookById(bookID);
        request.getSession().removeAttribute("msg");
        model.addAttribute("updatebook",book);
        return "updateBook";
    }


    //      修改完后   的跳转修改书籍页面
//    问题：没有弹窗，因为没有传msg
    @RequestMapping("/updateBookPage2")
    public String updateBookPage2(Model model){

        Object bookID =request.getSession().getAttribute("updateBookID");
        Object msg = request.getSession().getAttribute("msg");
        Book book = bookService.findBookById((Integer) bookID);
        model.addAttribute("updatebook",book);
        model.addAttribute("msg",msg);
        return "updateBook";
    }

//     在书单页面 删除书籍
    @RequestMapping("/delete")
    public String deleteBook(int bookID){
        int i = bookService.deleteBook(bookID);
        if(i>0){
            request.getSession().setAttribute("msg","删除成功");
        }else
            request.getSession().setAttribute("msg","删除失败");

        return "redirect:/book/findAllBook";
    }

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
//        使用转发，刷新页面会不断增加
        return "redirect:/book/findAllBook";
    }

//    在 修改页面修改书籍
    @RequestMapping("/update")
    public String updateBook(Book book,Model model){
        int i = bookService.updateBook(book);
        if(i>0){
            request.getSession().setAttribute("msg","修改成功");
        }
        else{
            request.getSession().setAttribute("msg","修改失败");
        }
        request.getSession().setAttribute("updateBookID",book.getBookID());
//        model.addAttribute("updatebook",book.getBookID());
        return "redirect:/book/updateBookPage2";
    }

    @RequestMapping("/findByName")
    public String findByName(String bookName,Model model){
        List<Book> bookByName = bookService.findBookByName(bookName);
        model.addAttribute("book",bookByName);
        return "findAllBook";

    }


}
