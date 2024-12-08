package com.saiuya.blog.annotation;

import java.lang.annotation.*;

/**
 * 访问日志注解
 *
 * @author saiuya
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface VisitLogger {

    /**
     * @return 访问页面
     */
    String value() default "";
}
