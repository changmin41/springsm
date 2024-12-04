package edu.sm.kakao;

import edu.sm.util.KakaoLocal;
import edu.sm.util.KoGPTUtil;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
class Kakao2 {

    @Value("${app.key.kakao_rest_key}")
    String key;

    @Test
    void contextLoads() throws Exception {
        String result="";
        result = (String) KoGPTUtil.getMsg(key,"오늘 날씨 나쁜놈아 너 아니? 진짜 알아? 그거 정확한거 맞아?");

        System.out.println(result);

    }
}
