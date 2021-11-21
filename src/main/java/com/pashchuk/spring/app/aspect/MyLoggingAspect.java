package com.pashchuk.spring.app.aspect;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* com.pashchuk.spring.app.dao.*.*(..))")
    public Object aroundAllRepositoryMethod(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();
        String methodName = methodSignature.getName();
        System.out.println("begin: " + methodName);
        Object objTarget = proceedingJoinPoint.proceed();
        System.out.println("End of: " + methodName);
        return objTarget;
    }
}
