package com.howtech.posadminapi.clients;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class StoreClient {

    private final RestTemplate restTemplate;

    public StoreClient() {
        restTemplate = new RestTemplate();
    }
}
