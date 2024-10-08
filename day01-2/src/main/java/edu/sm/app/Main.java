package edu.sm.app;

import edu.sm.cust.service.CustService;
import edu.sm.dto.Cust;
import edu.sm.frame.SMService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {

        ApplicationContext factory =
                new ClassPathXmlApplicationContext("spring.xml"); //spring상에서

        SMService<String, Cust> service = // cservice를 가져와서 실행
                (SMService<String, Cust>) factory.getBean("cservice"); // userService이름의 서비스를 가져와서 service에 집어넣는다.
        service.remove("id01");

    }
}
