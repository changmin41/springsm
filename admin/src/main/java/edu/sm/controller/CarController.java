package edu.sm.controller;

import edu.sm.app.dto.CarDto;
import edu.sm.app.dto.CustDto;
import edu.sm.app.service.CarService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/car")
public class CarController {

    final CarService carService;
    String dir = "car/";

    @RequestMapping("")
    public String car(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }

    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "add");
        return "index";
    }

    @RequestMapping("/get")
    public String get(Model model) throws Exception {
        List<CarDto> cars = new ArrayList<>();
        cars = carService.get();

        model.addAttribute("cars",cars);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"get");
        return "index";
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model,@RequestParam("car_id") Integer car_id
                                ) throws Exception {
        carService.del(car_id);
        return "redirect:/car/get";
    }

    @RequestMapping("/detail")
    public String detail(Model model,@RequestParam("car_id") Integer car_id) throws Exception {
        CarDto carDto = null;
        carDto = carService.get(car_id);
        model.addAttribute("car",carDto);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"detail");
        return "index";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model,
                             CarDto carDto) throws Exception {
        carService.modify(carDto);
        model.addAttribute("center","registerok");
//        return "redirect:/car/detail?car_id="+carDto.getCarId();
            return "redirect:/car/get";
    }

    @RequestMapping("/search")
    public String search(Model model,  @RequestParam("carName") String name
    ) throws Exception {
        List<CarDto> cars = carService.findByName(name);
        model.addAttribute("cars",cars);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"get");
        return "index";
    }



}
