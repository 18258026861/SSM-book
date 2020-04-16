import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import yzy.pojo.Book;
import yzy.service.IBookService;

import java.util.List;

/**
 * @author YZY
 * @date 2020/4/16 - 12:29
 */
public class test {
    @Test
    public void test(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        IBookService bookService = applicationContext.getBean("BookServiceImpl", IBookService.class);
        List<Book> books = bookService.findAllBook();
        for(Book book:books){
            System.out.println(book);
        }
    }

}
