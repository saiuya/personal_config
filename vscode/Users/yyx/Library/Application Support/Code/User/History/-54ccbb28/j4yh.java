package com.saiuya.blog.annotation;

import com.saiuya.blog.validator.EnumValidator;

import jakarta.validation.Constraint;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.Payload;
import java.lang.annotation.*;

/**
 * 评论类型注解
 *
 * @author saiuya
 **/
@Documented
@Constraint(validatedBy = { (Class<ConstraintValidator) EnumValidator.class })
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface EnumValid {

    String message() default "{javax.validation.constraints.NotBlank.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    /**
     * @return 评论类型
     */
    int[] values() default {};

}