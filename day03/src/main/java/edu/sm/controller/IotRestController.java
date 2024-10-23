package edu.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@RestController
@Slf4j
@RequestMapping("/iot")
public class IotRestController {

    @RequestMapping("/power")
    public Object power(@RequestBody String data) {
       log.info(data); //iot장비에서 데이터를 받아오는 역할.
        return 1;

    }


}
