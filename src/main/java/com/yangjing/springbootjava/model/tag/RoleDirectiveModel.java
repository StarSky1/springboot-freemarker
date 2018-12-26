package com.yangjing.springbootjava.model.tag;

import freemarker.core.Environment;
import freemarker.template.*;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Component
public class RoleDirectiveModel implements TemplateDirectiveModel {
    /**
     *
     * @param environment 环境变量
     * @param params 指令参数（存储你所需要的值，随便是什么Key-Value你懂的）
     * @param loopVars 循环变量 返回值
     * @param templateDirectiveBody 指令内容
     * 除了params外，其他的都能是Null。
     * @throws TemplateException
     * @throws IOException
     */
    @Override
    public void execute(Environment environment, Map params, TemplateModel[] loopVars, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        System.out.println("=========");
        TemplateScalarModel user=(TemplateScalarModel)params.get("user");
        TemplateScalarModel role=(TemplateScalarModel)params.get("role");

        if("123456".equals(user.getAsString()) && "admin".equals(role.getAsString()) ){
            loopVars[0]=TemplateBooleanModel.TRUE;
        }

        List<String> otherRights=new ArrayList<>();
        otherRights.add("add");
        otherRights.add("update");
        otherRights.add("delete");
        loopVars[1]=new SimpleSequence(otherRights);

        templateDirectiveBody.render(environment.getOut());
    }
}
