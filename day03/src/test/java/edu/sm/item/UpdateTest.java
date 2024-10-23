package edu.sm.item;

import edu.sm.app.dto.CustDto;
import edu.sm.app.dto.ItemDto;
import edu.sm.app.service.CustService;
import edu.sm.app.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@Slf4j
@SpringBootTest

public class UpdateTest {

    @Autowired
    ItemService itemService;

    @Test
    void contextLoads() {
        ItemDto itemDto = ItemDto.builder()
                .itemId(2)
                .imgName("몽자")
                .itemPrice(9999)
                .itemName("몽자입니다")
                .build();
        try {
            itemService.modify(itemDto);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
