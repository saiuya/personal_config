package com.saiuya.blog.annotation;

import java.lang.annotation.*;

/**
 * 操作日志注解
 *
 * @author saiuya
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface OptLogger {

    /**
     * @return 操作描述
     */
    String value() default "";

}
