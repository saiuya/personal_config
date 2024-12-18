����   A �
      8com/saiuya/blog/strategy/impl/AbstractUploadStrategyImpl <init> ()V
  	 
   3com/saiuya/blog/strategy/impl/OssUploadStrategyImpl getOssClient ()Lcom/aliyun/oss/OSS;	     ossProperties 1Lcom/saiuya/blog/config/properties/OssProperties;
      /com/saiuya/blog/config/properties/OssProperties getBucketName ()Ljava/lang/String;      com/aliyun/oss/OSS doesObjectExist '(Ljava/lang/String;Ljava/lang/String;)Z
     ! " java/lang/Boolean valueOf (Z)Ljava/lang/Boolean;   $ % & makeConcatWithConstants 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;  ( ) * 	putObject a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/aliyun/oss/model/PutObjectResult;  , -  shutdown / com/aliyun/oss/OSSException	  1 2 3 log Lorg/slf4j/Logger;
 . 5 6  getErrorMessage  8 % 9 &(Ljava/lang/String;)Ljava/lang/String; ; < = > ? org/slf4j/Logger error (Ljava/lang/String;)V
 . A B  getErrorCode  8
 . E F  getRequestId  8 ; I J ? info
 . L M  	getHostId  8 P com/aliyun/oss/ClientException
 O R S  
getMessage  8
  V W  getUrl Y com/aliyun/oss/OSSClientBuilder
 X 
  \ ]  getEndpoint
  _ `  getAccessKeyId
  b c  getAccessKeySecret
 X e f g build L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/OSS;
 i j k l m org/slf4j/LoggerFactory 	getLogger %(Ljava/lang/Class;)Lorg/slf4j/Logger; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 5Lcom/saiuya/blog/strategy/impl/OssUploadStrategyImpl; exists '(Ljava/lang/String;)Ljava/lang/Boolean; filePath Ljava/lang/String; MethodParameters Ljava/lang/Override; upload <(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V oe Lcom/aliyun/oss/OSSException; ce  Lcom/aliyun/oss/ClientException; path fileName inputStream Ljava/io/InputStream; 	ossClient Lcom/aliyun/oss/OSS; StackMapTable � java/lang/String � java/io/InputStream � java/lang/Throwable getFileAccessUrl <clinit> 
SourceFile OssUploadStrategyImpl.java (Lorg/springframework/stereotype/Service; ossUploadStrategyImpl Llombok/extern/slf4j/Slf4j; BootstrapMethods �  � Error Message: � Error Code: � Request ID: � 	Host ID: � *Caught an ClientException, Error Message: �
 � � � % � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !       2 3  n     o   p     q  r[ s s     t     u        v   /     *� �    w        x        y z    { |  v   I     *� *� � +�  � �    w        x        y z      } ~      }   p     �    � �  v  �     �*� :*� � +,� #  -� ' W� �� + � �:� 0� 4� 7  � : � 0� @� C  � : � 0� D� G  � H � 0� K� N  � H � A� + � 7:� 0� Q� T  � : � � + � :� 
� + ��    , .   � O   �   , v �   � � �   � � �    w   N    !  $  - " . , % . & @ ' R ( d ) v - { . � * � + � - � . � - � . � 0 � 1 x   H  . H � �  �  � �    � y z     � � ~    � � ~    � � �   � � �  �   / � ,   � � �   .� X Ob ��   ��      �   �   �   p     �    � 9  v   B     *� � U+� #  �    w       5 x        y z      } ~      }   p     �       v   R      � XY� Z*� � [*� � ^*� � a� d�    w       >  ?  > x         y z    �   v   !      	� h� 0�    w         �    � t     �  rs � p     �   �   &  �  � �  � �  � �  � �  � �  � �   
  � � � 