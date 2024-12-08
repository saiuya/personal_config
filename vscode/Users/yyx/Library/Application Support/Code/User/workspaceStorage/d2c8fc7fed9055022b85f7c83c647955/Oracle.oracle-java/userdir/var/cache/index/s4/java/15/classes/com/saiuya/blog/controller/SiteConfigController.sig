����   A X
      java/lang/Object <init> ()V	  	 
   /com/saiuya/blog/controller/SiteConfigController siteConfigService +Lcom/saiuya/blog/service/SiteConfigService;
      )com/saiuya/blog/service/SiteConfigService getSiteConfig %()Lcom/saiuya/blog/entity/SiteConfig;
      com/saiuya/blog/model/vo/Result success 5(Ljava/lang/Object;)Lcom/saiuya/blog/model/vo/Result;
     updateSiteConfig &(Lcom/saiuya/blog/entity/SiteConfig;)V
     #()Lcom/saiuya/blog/model/vo/Result;
  ! " # uploadSiteImg E(Lorg/springframework/web/multipart/MultipartFile;)Ljava/lang/String; RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 1Lcom/saiuya/blog/controller/SiteConfigController; 	Signature H()Lcom/saiuya/blog/model/vo/Result<Lcom/saiuya/blog/entity/SiteConfig;>; %Lio/swagger/annotations/ApiOperation; value 获取网站配置 /Lcn/dev33/satoken/annotation/SaCheckPermission; web:site:list 4Lorg/springframework/web/bind/annotation/GetMapping; /admin/site/list F(Lcom/saiuya/blog/entity/SiteConfig;)Lcom/saiuya/blog/model/vo/Result; 
siteConfig #Lcom/saiuya/blog/entity/SiteConfig; MethodParameters I(Lcom/saiuya/blog/entity/SiteConfig;)Lcom/saiuya/blog/model/vo/Result<*>; &Lcom/saiuya/blog/annotation/OptLogger; 修改 更新网站配置 web:site:update 4Lorg/springframework/web/bind/annotation/PutMapping; /admin/site/update "RuntimeVisibleParameterAnnotations 5Lorg/springframework/web/bind/annotation/RequestBody; T(Lorg/springframework/web/multipart/MultipartFile;)Lcom/saiuya/blog/model/vo/Result; file 1Lorg/springframework/web/multipart/MultipartFile; h(Lorg/springframework/web/multipart/MultipartFile;)Lcom/saiuya/blog/model/vo/Result<Ljava/lang/String;>; 上传 上传网站配置图片 )Lio/swagger/annotations/ApiImplicitParam; name 配置图片 required    dataType MultipartFile web:site:upload 5Lorg/springframework/web/bind/annotation/PostMapping; /admin/site/upload 6Lorg/springframework/web/bind/annotation/RequestParam; 
SourceFile SiteConfigController.java Lio/swagger/annotations/Api; tags 网站配置模块 8Lorg/springframework/web/bind/annotation/RestController; !          $     %        &   /     *� �    '        (        ) *       &   5     *� � � �    '       ' (        ) *   +    , $   #  -  .s / 0  .[ s 1 2  .[ s 3   4  &   D     *� +� � �    '   
    5  6 (        ) *      5 6  7    5   +    8 $   ,  9  .s : -  .s ; 0  .[ s < =  .[ s > ?     @    " A  &   @     *� +�  � �    '       E (        ) *      B C  7    B   +    D $   D  9  .s E -  .s F G  Hs B .s I JZ K Ls M 0  .[ s N O  .[ s P ?     Q  .s B  R    S $     T  U[ s V W  