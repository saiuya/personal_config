����   7 �
      java/lang/Object <init> ()V  1springfox/documentation/spring/web/plugins/Docket	 
     -springfox/documentation/spi/DocumentationType 	SWAGGER_2 /Lspringfox/documentation/spi/DocumentationType;
     2(Lspringfox/documentation/spi/DocumentationType;)V  https
      java/util/Collections 	singleton #(Ljava/lang/Object;)Ljava/util/Set;
     	protocols D(Ljava/util/Set;)Lspringfox/documentation/spring/web/plugins/Docket;  https://www.ttkwsd.top
  ! " # host G(Ljava/lang/String;)Lspringfox/documentation/spring/web/plugins/Docket;
 % & ' ( ) com/ican/config/Knife4jConfig apiInfo +()Lspringfox/documentation/service/ApiInfo;
  + ( , ^(Lspringfox/documentation/service/ApiInfo;)Lspringfox/documentation/spring/web/plugins/Docket;
  . / 0 select A()Lspringfox/documentation/spring/web/plugins/ApiSelectorBuilder; 2 com.ican.controller
 4 5 6 7 8 8springfox/documentation/builders/RequestHandlerSelectors basePackage 2(Ljava/lang/String;)Ljava/util/function/Predicate;
 : ; < = > =springfox/documentation/spring/web/plugins/ApiSelectorBuilder apis _(Ljava/util/function/Predicate;)Lspringfox/documentation/spring/web/plugins/ApiSelectorBuilder;
 @ A B C D .springfox/documentation/builders/PathSelectors any  ()Ljava/util/function/Predicate;
 : F G > paths
 : I J K build 5()Lspringfox/documentation/spring/web/plugins/Docket; M /springfox/documentation/builders/ApiInfoBuilder
 L  P 博客API文档
 L R S T title E(Ljava/lang/String;)Lspringfox/documentation/builders/ApiInfoBuilder; V +基于SpringBoot + Vue开发的博客项目
 L X Y T description [ https://www.ttkwsd.top/api
 L ] ^ T termsOfServiceUrl ` 'springfox/documentation/service/Contact b 阿冬 d https://github.com/ICAN1999 f 1632167813@qq.com
 _ h  i 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
 L k l m contact \(Lspringfox/documentation/service/Contact;)Lspringfox/documentation/builders/ApiInfoBuilder; o 2.0
 L q r T version
 L t J ) Code LineNumberTable LocalVariableTable this Lcom/ican/config/Knife4jConfig; createRestApi RuntimeVisibleAnnotations -Lorg/springframework/context/annotation/Bean; 
SourceFile Knife4jConfig.java 6Lorg/springframework/context/annotation/Configuration; CLspringfox/documentation/swagger2/annotations/EnableSwagger2WebMvc; ! %           u   /     *� �    v        w        x y    z K  u   }     3� Y� 	� � � �  *� $� *� -1� 3� 9� ?� E� H�    v   & 	            #   ) ! / " 2  w       3 x y   {     |    ( )  u   u     /� LY� NO� QU� WZ� \� _Yace� g� jn� p� s�    v   "    & 	 '  (  ) # * ( + + , . & w       / x y    }    ~ {   
     �  