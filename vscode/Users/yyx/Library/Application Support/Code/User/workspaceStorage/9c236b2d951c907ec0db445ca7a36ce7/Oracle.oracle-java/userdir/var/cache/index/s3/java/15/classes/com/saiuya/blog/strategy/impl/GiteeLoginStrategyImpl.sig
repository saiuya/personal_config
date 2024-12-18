����   A �
      7com/saiuya/blog/strategy/impl/AbstractLoginStrategyImpl <init> ()V
  	 
   (com/saiuya/blog/model/vo/request/CodeReq getCode ()Ljava/lang/String;
      4com/saiuya/blog/strategy/impl/GiteeLoginStrategyImpl getGiteeToken 8(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/TokenDTO;
      (com/saiuya/blog/model/dto/SocialTokenDTO builder B()Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;
      "com/saiuya/blog/model/dto/TokenDTO getAccess_token
    ! " # >com/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder accessToken T(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;	 % & ' ( ) #com/saiuya/blog/enums/LoginTypeEnum GITEE %Lcom/saiuya/blog/enums/LoginTypeEnum;
 % + , - getLoginType ()Ljava/lang/Integer;
  / 0 1 	loginType U(Ljava/lang/Integer;)Lcom/saiuya/blog/model/dto/SocialTokenDTO$SocialTokenDTOBuilder;
  3 4 5 build ,()Lcom/saiuya/blog/model/dto/SocialTokenDTO; 7 java/util/HashMap
 6 9  : (I)V < ,com/saiuya/blog/constant/SocialLoginConstant > access_token
  @ A  getAccessToken C D E F G java/util/Map put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;	  I J K restTemplate -Lorg/springframework/web/client/RestTemplate;	  M N O giteeProperties 3Lcom/saiuya/blog/config/properties/GiteeProperties;
 Q R S T  1com/saiuya/blog/config/properties/GiteeProperties getUserInfoUrl V (com/saiuya/blog/model/dto/GitUserInfoDTO
 X Y Z [ \ +org/springframework/web/client/RestTemplate getForObject F(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
 ^ _ `  a +com/saiuya/blog/model/dto/SocialUserInfoDTO H()Lcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder;
 c d e f g java/util/Objects requireNonNull &(Ljava/lang/Object;)Ljava/lang/Object;
 U i j  getAvatar_url
 l m n o p Dcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder avatar Z(Ljava/lang/String;)Lcom/saiuya/blog/model/dto/SocialUserInfoDTO$SocialUserInfoDTOBuilder;
 U r s  getId
 l u v p id
 U x y  getName
 l { | p nickname
 l ~ 4  /()Lcom/saiuya/blog/model/dto/SocialUserInfoDTO; � ,org/springframework/util/LinkedMultiValueMap
 �  � 	client_id
 Q � �  getClientId � � � � � &org/springframework/util/MultiValueMap add '(Ljava/lang/Object;Ljava/lang/Object;)V � client_secret
 Q � �  getClientSecret � 
grant_type
 Q � �  getGrantType � redirect_uri
 Q � �  getRedirectUri � code
 Q � �  getAccessTokenUrl	 � � � � � #org/springframework/http/HttpMethod POST %Lorg/springframework/http/HttpMethod; � #org/springframework/http/HttpEntity
 � �  � =(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V � java/lang/Object
 X � � � exchange �(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
 � � � � � 'org/springframework/http/ResponseEntity getBody ()Ljava/lang/Object; � java/lang/Exception � *com/saiuya/blog/exception/ServiceException � Gitee登录错误
 � �  � (Ljava/lang/String;)V RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 6Lcom/saiuya/blog/strategy/impl/GiteeLoginStrategyImpl; getSocialToken V(Lcom/saiuya/blog/model/vo/request/CodeReq;)Lcom/saiuya/blog/model/dto/SocialTokenDTO; codeReq *Lcom/saiuya/blog/model/vo/request/CodeReq; 
giteeToken $Lcom/saiuya/blog/model/dto/TokenDTO; MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getSocialUserInfo Y(Lcom/saiuya/blog/model/dto/SocialTokenDTO;)Lcom/saiuya/blog/model/dto/SocialUserInfoDTO; socialToken *Lcom/saiuya/blog/model/dto/SocialTokenDTO; dataMap Ljava/util/Map; gitUserInfoDTO *Lcom/saiuya/blog/model/dto/GitUserInfoDTO; LocalVariableTypeTable 5Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; e Ljava/lang/Exception; Ljava/lang/String; 	giteeData (Lorg/springframework/util/MultiValueMap; NLorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>; StackMapTable � java/lang/String 
SourceFile GiteeLoginStrategyImpl.java (Lorg/springframework/stereotype/Service; value giteeLoginStrategyImpl InnerClasses SocialTokenDTOBuilder SocialUserInfoDTOBuilder !       N O  �     �    J K  �     �        �   /     *� �    �        �        � �    � �  �   r      *+� � M� ,� � � $� *� .� 2�    �       ) 	 +  ,  -  .  + �          � �       � �  	  � �  �    �   �     �    � �  �   �     M� 6Y� 8M,=+� ?� B W*� H*� L� PU,� W� UN� ]-� b� U� h� k-� q� t-� w� z� }�    �   "    3 	 5  7 + : / ; < < C = L : �   *    M � �     M � �  	 D � �  + " � �  �     	 D � �  �    �   �     �       �  $     � �Y� �M,�*� L� �� � ,�*� L� �� � ,�*� L� �� � ,�*� L� �� � ,�+� � *� H*� L� �� �� �Y,� �� �� �� �� �N� �Y�� ��  M s t �  �   .    H  J  K & L 5 M D N M P m S s P t T u U �   *  u 
 � �     � �      � �   w � �  �      w � �  �    � t   � �  � �    �    �    � �     �  �s � �       � 	 l ^ � 	