package edu.sm.app.dto;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
//메시지를 보낼 때 표준화 시키기 위해 만듦
public class Msg {
    private String sendid;
    private String receiveid;
    private String content1;
}