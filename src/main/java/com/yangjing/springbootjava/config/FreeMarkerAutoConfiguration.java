package com.yangjing.springbootjava.config;


import com.yangjing.springbootjava.model.tag.RoleDirectiveModel;
import com.yangjing.springbootjava.model.tag.SortMethod;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

@Slf4j
@Configuration
public class FreeMarkerAutoConfiguration {

    @Autowired
    private freemarker.template.Configuration configuration;
    @Autowired
    private RoleDirectiveModel roleDirectiveModel;
    @Autowired
    private SortMethod sortMethod;

    @PostConstruct
    public void setSharedVariable() {
        try {
            //自定义标签
            configuration.setSharedVariable("role", roleDirectiveModel);
            configuration.setSharedVariable("sort_int",sortMethod);
        } catch (Exception e) {
            log.error("Custom tags failed to load：{}", e.getMessage());
        }
    }
}
