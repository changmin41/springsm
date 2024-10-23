package edu.sm.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j

public class CustController {

    String dir ="cust/";


    @RequestMapping("/cust")
    public String cust(Model model){
        model.addAttribute("center",  dir+"cust");
        return "index";
    }

    @RequestMapping("/custadd")
    public String custadd(Model model){
        model.addAttribute("center",  dir+"custadd");  // JSP에서 렌더링할 페이지 명을 정확히 지정
        return "index";  // "index"는 실제로 index.jsp 파일로 연결되는지 확인
    }
}
