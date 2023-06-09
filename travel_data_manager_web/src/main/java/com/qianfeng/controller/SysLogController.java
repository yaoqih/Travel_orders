package com.qianfeng.controller;

import com.github.pagehelper.PageInfo;
import com.qianfeng.domain.SysLog;
import com.qianfeng.service.ISysLogService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Aspect//通知类
@Component//帮助我们创建对象
@RequestMapping("sysLog")
public class SysLogController {

    //指定要拦截的controller
    @Pointcut(value ="execution(* com.qianfeng.controller.*.*(..))")
    public void pt1(){

    }
    //时间
    private Date visitTime = null;
    //ip
    @Resource
    private HttpServletRequest request;

    @Resource
    private ISysLogService sysLogService;

    @Around(value = "pt1()")
    public  Object around(ProceedingJoinPoint pdj) throws Throwable {
        SysLog sysLog=new SysLog();
        //1 id
        sysLog.setId(UUID.randomUUID().toString());
        //2 用户名
        SecurityContext securityContext = SecurityContextHolder.getContext();
        User user = (User) securityContext.getAuthentication().getPrincipal();
        String username = user.getUsername();
        sysLog.setUsername(username);
        //3 执行时间
        visitTime=new Date();
        sysLog.setVisitTime(visitTime);
        //4 ip
        String ip = request.getRemoteAddr();
        sysLog.setIp(ip);
        //5 url
        //5.1当前用户访问的类
        Object target = pdj.getTarget();
        //52得到class对象
        Class targetClass=target.getClass();
        //5.3表示判断类上是否存在@RequestMapping
        String url ="";
        String method=null;
        Object[] args=null;
        if(targetClass.isAnnotationPresent(RequestMapping.class)){
            //存在注解
            RequestMapping requestMappingClass=(RequestMapping) targetClass.getAnnotation(RequestMapping.class);
            url+=requestMappingClass.value()[0];
            String executionMethodName =pdj.getSignature().getName();
            //获取方法执行的参数
             args = pdj.getArgs();
            Class[] params=new Class[args.length];
            for (int i = 0; i <args.length ; i++) {
                params[i]=args[i].getClass();
            }
            Method executionMethod = targetClass.getMethod(executionMethodName, params);
            method=targetClass.getName() +"."+executionMethod.getName();
            if (executionMethod.isAnnotationPresent(RequestMapping.class)){
                RequestMapping requestMappingMethod = executionMethod.getAnnotation(RequestMapping.class);
                url+=requestMappingMethod.value()[0];
            }
        }
        sysLog.setUrl(url);
        //6.method
        sysLog.setMethod(method);
       //7. executionTime
        long executionTime = new Date().getTime() - visitTime.getTime();
        sysLog.setExecutionTime((int) executionTime);

        //执行
        Object result = pdj.proceed(args);

        //将sys插入到数据库
        sysLogService.addSysLog(sysLog);
        //
        return result;
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(@RequestParam(defaultValue = "1",name = "page") Integer page, @RequestParam(defaultValue = "3",name = "pageSize")Integer pageSize){
        ModelAndView mav = new ModelAndView();
        List<SysLog> sysLogList= sysLogService.findAll(page,pageSize);
        PageInfo<SysLog> pageInfo = new PageInfo<>(sysLogList);
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("syslog-list");
        return mav;
    }
}
