package com.zk.blog.api.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author ke_zhang
 * @description 跨域配置类
 * @create 2022-05-02 21:19
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        // 设置允许跨域的路由
        registry.addMapping("/**")
                // 设置允许跨域请求的域名
                .allowedOriginPatterns("*")
                // 是否允许证书（cookies）
                .allowCredentials(true)
                // 设置允许的⽅法
                .allowedMethods("*")
                // 跨域允许时间
                .maxAge(3600);
    }
}
