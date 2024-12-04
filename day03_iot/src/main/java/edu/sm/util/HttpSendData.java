package edu.sm.util;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class HttpSendData {
    public static void send(String url, String data){
        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(data))
                .build();
        try {
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            // Print the response code for debugging
            int statusCode = response.statusCode();
            if (statusCode == 200) {
                System.out.println("Data sent successfully: " + data);
            } else {
                System.out.println("Error: Server returned status code " + statusCode);
                System.out.println("Response body: " + response.body());
            }

        } catch (Exception e) {
            System.out.println("Server Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
