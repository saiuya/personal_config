����   A 8
      java/lang/Object <init> ()V	  	 
   )com/saiuya/blog/controller/BiliController biliService %Lcom/saiuya/blog/service/BiliService;
      #com/saiuya/blog/service/BiliService uploadBiliPicture i(Lorg/springframework/web/multipart/MultipartFile;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      com/saiuya/blog/model/vo/Result success 5(Ljava/lang/Object;)Lcom/saiuya/blog/model/vo/Result; RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this +Lcom/saiuya/blog/controller/BiliController; 
biliUpload x(Lorg/springframework/web/multipart/MultipartFile;Ljava/lang/String;Ljava/lang/String;)Lcom/saiuya/blog/model/vo/Result; file 1Lorg/springframework/web/multipart/MultipartFile; csrf Ljava/lang/String; data MethodParameters 	Signature �(Lorg/springframework/web/multipart/MultipartFile;Ljava/lang/String;Ljava/lang/String;)Lcom/saiuya/blog/model/vo/Result<Ljava/lang/String;>; %Lio/swagger/annotations/ApiOperation; value B站图片上传 5Lorg/springframework/web/bind/annotation/PostMapping; /bili/upload "RuntimeVisibleParameterAnnotations 6Lorg/springframework/web/bind/annotation/RequestParam; file_up 
SourceFile BiliController.java Lio/swagger/annotations/Api; tags B站服务模块 8Lorg/springframework/web/bind/annotation/RestController; !                          /     *� �                           !     V     *� +,-� � �           %    *            " #     $ %     & %  '    "   $   &   (    )      *  +s , -  +[ s . /   "  0  +s 1  0  +s $  0  +s &  2    3      4  5[ s 6 7  