package edu.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController { // 역할 : 브라우저의 ???

    @RequestMapping("/")
    public String main(Model model) {
      log.info("start main..."); //print 가 이닌 log로 찍는 이유 나도 몰라 찾아봐 ㅋ
        model.addAttribute("data", "hello world");
        model.addAttribute("num", "10000");
        return "index";
    }


}
