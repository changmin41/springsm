package edu.sm.util;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class HttpSendData {
    public static void send(String url, String data) {
        // HttpClient 생성
        HttpClient client = HttpClient.newHttpClient();

        // HttpRequest 생성
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(data))  // POST 요청에 데이터 추가
                .build();

        try {
            // 요청을 보내고 응답 받음
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            // 응답 상태 및 본문 출력
            System.out.println("Response Code: " + response.statusCode());
            System.out.println("Response Body: " + response.body());
        } catch (Exception e) {
            // 예외 처리 시 상세 메시지 출력
            System.out.println("Server Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
