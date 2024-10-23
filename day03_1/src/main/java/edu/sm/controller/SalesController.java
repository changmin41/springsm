package edu.sm.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
//@RequestMapping("/sales")
public class SalesController {

    String dir ="sales/";

    @RequestMapping("/sales")
    public String sales(Model model){
        model.addAttribute("center",  dir+"sales");
        return "index";
    }

    @RequestMapping("/sales2")
    public String sales2(Model model){
        model.addAttribute("center",  dir+"sales2");
        return "index";
    }


}
