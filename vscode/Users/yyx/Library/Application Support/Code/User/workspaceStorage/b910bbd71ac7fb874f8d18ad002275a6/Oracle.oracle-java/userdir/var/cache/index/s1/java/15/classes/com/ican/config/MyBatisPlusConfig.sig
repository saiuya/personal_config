����   7 $
      java/lang/Object <init> ()V  Acom/baomidou/mybatisplus/extension/plugins/MybatisPlusInterceptor
    Kcom/baomidou/mybatisplus/extension/plugins/inner/PaginationInnerInterceptor
 
 
     addInnerInterceptor F(Lcom/baomidou/mybatisplus/extension/plugins/inner/InnerInterceptor;)V  !com/ican/config/MyBatisPlusConfig Code LineNumberTable LocalVariableTable this #Lcom/ican/config/MyBatisPlusConfig; mybatisPlusInterceptor E()Lcom/baomidou/mybatisplus/extension/plugins/MybatisPlusInterceptor; interceptor CLcom/baomidou/mybatisplus/extension/plugins/MybatisPlusInterceptor; RuntimeVisibleAnnotations -Lorg/springframework/context/annotation/Bean; 
SourceFile MyBatisPlusConfig.java 6Lorg/springframework/context/annotation/Configuration; *Lorg/mybatis/spring/annotation/MapperScan; value com.ican.mapper !               /     *� �                               Q     � Y� 	L+� 
Y� � +�                                                        !  "[ s #