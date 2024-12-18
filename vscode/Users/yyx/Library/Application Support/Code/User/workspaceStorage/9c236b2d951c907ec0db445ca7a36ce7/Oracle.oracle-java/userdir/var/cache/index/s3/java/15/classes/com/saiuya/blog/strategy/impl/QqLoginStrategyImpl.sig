����   A
      7com/saiuya/blog/strategy/impl/AbstractLoginStrategyImpl <init> ()V
  	 
   (com/saiuya/blog/model/vo/request/CodeReq getCode ()Ljava/lang/String;
      1com/saiuya/blog/strategy/impl/QqLoginStrategyImpl 
getQqToken 8(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/TokenDTO;
      "com/saiuya/blog/model/dto/TokenDTO getAccess_token
     getUserOpenId :(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/QqTokenDTO;
      ! (com/saiuya/blog/model/dto/SocialTokenDTO builder B()Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;
 # $ % &  $com/saiuya/blog/model/dto/QqTokenDTO 	getOpenid
 ( ) * + , >com/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder openId T(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;
 ( . / , accessToken	 1 2 3 4 5 #com/saiuya/blog/enums/LoginTypeEnum QQ %Lcom/saiuya/blog/enums/LoginTypeEnum;
 1 7 8 9 getLoginType ()Ljava/lang/Integer;
 ( ; < = 	loginType U(Ljava/lang/Integer;)Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;
 ( ? @ A build ,()Lcom/saiuya/blog/model/dto/SocialTokenDTO; C ,org/springframework/util/LinkedMultiValueMap
 B E  F (I)V H ,com/saiuya/blog/constant/SocialLoginConstant J openid
  L M  	getOpenId O P Q R S &org/springframework/util/MultiValueMap set '(Ljava/lang/Object;Ljava/lang/Object;)V U access_token
  W X  getAccessToken Z oauth_consumer_key	  \ ] ^ qqProperties 0Lcom/saiuya/blog/config/properties/QqProperties;
 ` a b c  .com/saiuya/blog/config/properties/QqProperties getAppId
 ` e f  getUserInfoUrl
 h i j k l 1org/springframework/web/util/UriComponentsBuilder fromHttpUrl G(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder;
 h n o p queryParams ](Lorg/springframework/util/MultiValueMap;)Lorg/springframework/web/util/UriComponentsBuilder;
 h r @ s .()Lorg/springframework/web/util/UriComponents;
 u v w x y *org/springframework/web/util/UriComponents toUri ()Ljava/net/URI;	  { | } restTemplate -Lorg/springframework/web/client/RestTemplate;  'com/saiuya/blog/model/dto/QqUserInfoDTO
 � � � � � +org/springframework/web/client/RestTemplate getForObject 3(Ljava/net/URI;Ljava/lang/Class;)Ljava/lang/Object;
 � � �   � +com/saiuya/blog/model/dto/SocialUserInfoDTO H()Lcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder;
 � � � � � Dcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder id Z(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder;
 � � � � � java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
 ~ � �  getNickname
 � � � � nickname
 ~ � �  getFigureurl_qq_1
 � � � � avatar
 � � @ � /()Lcom/saiuya/blog/model/dto/SocialUserInfoDTO; � 
grant_type
 ` � �  getGrantType � 	client_id � client_secret
 ` � �  	getAppKey � code � redirect_uri
 ` � �  getRedirectUrl � fmt � json
 ` � �  getAccessTokenUrl � java/lang/Exception	  � � � log Lorg/slf4j/Logger; � getQqToken is error, {}
 � � �  
getMessage � � � � � org/slf4j/Logger error '(Ljava/lang/String;Ljava/lang/Object;)V � *com/saiuya/blog/exception/ServiceException � QQ登录错误
 � �  � (Ljava/lang/String;)V
 ` � �  getUserOpenIdUrl � 2org/springframework/web/client/RestClientException � getUserOpenId is error, {}
 � � � � � � info
 � � � � � org/slf4j/LoggerFactory 	getLogger %(Ljava/lang/Class;)Lorg/slf4j/Logger; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 3Lcom/saiuya/blog/strategy/impl/QqLoginStrategyImpl; getSocialToken V(Lcom/saiuya/blog/model/vo/request/CodeReq;)Lcom/saiuya/blog/model/dto/SocialTokenDTO; codeReq *Lcom/saiuya/blog/model/vo/request/CodeReq; qqToken $Lcom/saiuya/blog/model/dto/TokenDTO; 
userOpenId &Lcom/saiuya/blog/model/dto/QqTokenDTO; MethodParameters Ljava/lang/Override; getSocialUserInfo Y(Lcom/saiuya/blog/model/dto/SocialTokenDTO;)Lcom/saiuya/blog/model/dto/SocialUserInfoDTO; socialToken *Lcom/saiuya/blog/model/dto/SocialTokenDTO; queryMap (Lorg/springframework/util/MultiValueMap; uriComponentsBuilder 3Lorg/springframework/web/util/UriComponentsBuilder; uri Ljava/net/URI; 
qqUserInfo )Lcom/saiuya/blog/model/dto/QqUserInfoDTO; LocalVariableTypeTable NLorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>; e Ljava/lang/Exception; Ljava/lang/String; StackMapTable 4Lorg/springframework/web/client/RestClientException; <clinit> 
SourceFile QqLoginStrategyImpl.java (Lorg/springframework/stereotype/Service; qqLoginStrategyImpl Llombok/extern/slf4j/Slf4j; InnerClasses SocialTokenDTOBuilder SocialUserInfoDTOBuilder !       � �  �     �   �     �  �[ s �  ] ^  �     �    | }  �     �        �   /     *� �    �        �        � �    � �  �   �     0*+� � M*,� � N� -� "� ',� � -� 0� 6� :� >�    �   "    ( 	 *  ,  -  . & / , 0 / , �   *    0 � �     0 � �  	 ' � �    � �  �    �   �     �      �       |� BY� DM,I+� K� N ,T+� V� N ,Y*� [� _� N *� [� d� gN-,� m� q� t:*� z~� �� ~:� �+� K� �� �� ~� �� �� �� �� ��    �   6    6 	 7  8 ! 9 0 : ; ; H = X ? \ @ d A r B x C { ? �   >    | � �     |  	 s  ; A  H 4	  X $
      	 s  �      �     �       �  Q     �� BY� DM,�*� [� �� N ,�*� [� _� N ,�*� [� �� N ,�+� N ,�*� [� �� N ,��� N *� [� �� gN-,� m� q� t:*� z� �� �M� ��,� ȹ � � �Yӷ տ     � �  �   :    O 
 Q  R ( S 7 T @ U O V Y W ] X d Y q Z � [ � \ � ] �   >  
 v  d   q 	  �     � � �     � �      
 v     � � � �    �       �       \� BY� DM,T+� N ,��� N *� [� ظ gN-,� m� q� t:*� z#� �� #�M� ��,� ߹ � � �Yӷ տ    B C �  �   * 
   i 	 k  l  m   n ' o 4 p C q D r R s �   >  	 :  '   4 	  D     \ � �     \ /      	 :     � C � �    /      �   !      	� � ±    �            �      �s �           (  	 � � 	