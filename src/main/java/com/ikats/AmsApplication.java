package com.ikats;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

/**
 * @author shnejian26@hotmail.com
 * @date 2019/3/4 17:46
 */
@SpringBootApplication
public class AmsApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(AmsApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(AmsApplication.class, args);
    }

}