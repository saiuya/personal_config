Êþº¾   A Û
      8com/saiuya/blog/strategy/impl/AbstractUploadStrategyImpl <init> ()V
  	 
   3com/saiuya/blog/strategy/impl/CosUploadStrategyImpl getCosClient ()Lcom/qcloud/cos/COSClient;	     cosProperties 1Lcom/saiuya/blog/config/properties/CosProperties;
      /com/saiuya/blog/config/properties/CosProperties getBucketName ()Ljava/lang/String;
      com/qcloud/cos/COSClient doesObjectExist '(Ljava/lang/String;Ljava/lang/String;)Z
     ! " java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; $ #com/qcloud/cos/model/ObjectMetadata
 # 
 ' ( ) * + java/io/InputStream 	available ()I
 # - . / setContentLength (J)V   1 2 3 makeConcatWithConstants 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  5 6 7 	putObject (Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/qcloud/cos/model/ObjectMetadata;)Lcom/qcloud/cos/model/PutObjectResult;
  9 :  shutdown < ,com/qcloud/cos/exception/CosServiceException	  > ? @ log Lorg/slf4j/Logger;
 ; B C  getErrorMessage  E 2 F &(Ljava/lang/String;)Ljava/lang/String; H I J K L org/slf4j/Logger error (Ljava/lang/String;)V
 ; N O  getErrorCode  E
 ; R S  getRequestId  E H V W L info Y +com/qcloud/cos/exception/CosClientException
 X [ \  
getMessage  E _ java/io/IOException
 ^ [  E
  c d  getUrl f 'com/qcloud/cos/auth/BasicCOSCredentials
  h i  getSecretId
  k l  getSecretKey
 e n  o '(Ljava/lang/String;Ljava/lang/String;)V q com/qcloud/cos/region/Region
  s t  	getRegion
 p v  L x com/qcloud/cos/ClientConfig
 w z  { !(Lcom/qcloud/cos/region/Region;)V	 } ~     com/qcloud/cos/http/HttpProtocol https "Lcom/qcloud/cos/http/HttpProtocol;
 w    setHttpProtocol %(Lcom/qcloud/cos/http/HttpProtocol;)V
     D(Lcom/qcloud/cos/auth/COSCredentials;Lcom/qcloud/cos/ClientConfig;)V
      org/slf4j/LoggerFactory 	getLogger %(Ljava/lang/Class;)Lorg/slf4j/Logger; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 5Lcom/saiuya/blog/strategy/impl/CosUploadStrategyImpl; exists '(Ljava/lang/String;)Ljava/lang/Boolean; filePath Ljava/lang/String; MethodParameters Ljava/lang/Override; upload <(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V objectMetadata %Lcom/qcloud/cos/model/ObjectMetadata; e .Lcom/qcloud/cos/exception/CosServiceException; -Lcom/qcloud/cos/exception/CosClientException; Ljava/io/IOException; path fileName inputStream Ljava/io/InputStream; 	cosClient Lcom/qcloud/cos/COSClient; StackMapTable ² java/lang/String ´ java/lang/Throwable getFileAccessUrl cred $Lcom/qcloud/cos/auth/COSCredentials; region Lcom/qcloud/cos/region/Region; clientConfig Lcom/qcloud/cos/ClientConfig; <clinit> 
SourceFile CosUploadStrategyImpl.java (Lorg/springframework/stereotype/Service; cosUploadStrategyImpl Llombok/extern/slf4j/Slf4j; BootstrapMethods Ä  Æ Error Message: È Error Code: Ê Request ID: Ì -Caught an CosClientException, Error Message: Î &Caught an IOException, Error Message: Ð
 Ñ Ò Ó 2 Ô $java/lang/invoke/StringConcatFactory (Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses × %java/lang/invoke/MethodHandles$Lookup Ù java/lang/invoke/MethodHandles Lookup !       ? @                 [ s                      /     *· ±                               G     *¶ *´ ¶ +¶ ¸ °           "                                ¡    ¢ £    û     »*¶ :» #Y· %:-¶ &¶ ,*´ ¶ +,º 0  -¶ 4W¶ 8§ :² =¶ Aº D  ¹ G ² =¶ Mº P  ¹ G ² =¶ Qº T  ¹ U ¶ 8§ E:² =¶ Zº ]  ¹ G ¶ 8§ ):² =¶ `º a  ¹ G ¶ 8§ :¶ 8¿±   0 8 ;  0 x X  0  ^  0 °   8 p °   x  °    ¨ °   ° ² °       ^    '  )  +  - 0 7 5 8 8 . : / L 0 ^ 1 p 7 u 8 x 2 z 3  7  8  4  5 ¨ 7 ­ 8 ° 7 · 8 º 9    \ 	  ! ¤ ¥  : 6 ¦ §  z  ¦ ¨    ¦ ©    »       » ª     » «     » ¬ ­   µ ® ¯  °   ( ÿ 8   ± ± '   ; X[ ^[ ³	      ª   «   ¬        ¡    µ F     B     *´ ¶ b+º 0  °           =                                ¡               ?» eY*´ ¶ g*´ ¶ j· mL» pY*´ ¶ r· uM» wY,· yN-² |¶ » Y+-· °           G  J % K . N 5 P    *    ?      ) ¶ ·  %  ¸ ¹  .  º »   ¼      !      	¸ ³ =±             ½    ¾      ¿  s À      Á   Â   &  Ï  Ã Ï  Å Ï  Ç Ï  É Ï  Ë Ï  Í Õ   
  Ö Ø Ú 