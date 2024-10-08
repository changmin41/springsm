package edu.sm;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class Day03Application {

void cintextLoads(){
	log.info("test ok");
}
	public static void main(String[] args) {
		SpringApplication.run(Day03Application.class, args);
	}

}
