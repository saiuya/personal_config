����   7 :
      java/lang/Object <init> ()V  +org/springframework/web/client/RestTemplate
    Korg/springframework/http/converter/json/MappingJackson2HttpMessageConverter
 
 	      "org/springframework/http/MediaType 	TEXT_HTML $Lorg/springframework/http/MediaType;	     
TEXT_PLAIN      java/util/List of 6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
 
    setSupportedMediaTypes (Ljava/util/List;)V
  ! " # getMessageConverters ()Ljava/util/List;  % & ' add (Ljava/lang/Object;)Z ) "com/ican/config/RestTemplateConfig Code LineNumberTable LocalVariableTable this $Lcom/ican/config/RestTemplateConfig; restTemplate /()Lorg/springframework/web/client/RestTemplate; -Lorg/springframework/web/client/RestTemplate; #mappingJackson2HttpMessageConverter MLorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter; RuntimeVisibleAnnotations -Lorg/springframework/context/annotation/Bean; value 
SourceFile RestTemplateConfig.java 6Lorg/springframework/context/annotation/Configuration; ! (           *   /     *� �    +        ,        - .    / 0  *   x     *� Y� 	L� 
Y� M,� � � � +�  ,� $ W+�    +              (  ,        * - .    " / 1    2 3  4     5  6[ s /  7    8 4     9  