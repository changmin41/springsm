package edu.sm.controller;


import edu.sm.app.dto.Item;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@Slf4j
@RequestMapping("/item")
public class ItemController {

    String dir = "item/";

    @RequestMapping("")
    public String item(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/get")
    public String get(Model model) {
        List<Item> items = new ArrayList<>();
        items.add(Item.builder().id(Integer.parseInt(String.valueOf(1))).name("옷").price(3000).imgname("123.jpg").regdate(new Date()).build());
        items.add(Item.builder().id(Integer.parseInt(String.valueOf(2))).name("옷").price(4000).imgname("1234.jpg").regdate(new Date()).build());
        items.add(Item.builder().id(Integer.parseInt(String.valueOf(3))).name("옷").price(5000).imgname("123.jpg").regdate(new Date()).build());
        items.add(Item.builder().id(Integer.parseInt(String.valueOf(4))).name("옷").price(6000).imgname("1234.jpg").regdate(new Date()).build());
        items.add(Item.builder().id(Integer.parseInt(String.valueOf(5))).name("옷").price(7000).imgname("123.jpg").regdate(new Date()).build());

        model.addAttribute("items", items);

        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "get");
        return "index";
    }
}