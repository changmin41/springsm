package edu.sm.item;

import edu.sm.app.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest

public class DeleteTest {
    @Autowired
    ItemService itemService;

    @Test
    public void testSelectOne() {

        try {
            itemService.del(8);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
