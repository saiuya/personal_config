����   A
      java/lang/Object <init> ()V
  	 
   7com/saiuya/blog/strategy/impl/AbstractLoginStrategyImpl getSocialToken V(Lcom/saiuya/blog/model/vo/request/CodeReq;)Lcom/saiuya/blog/model/dto/SocialTokenDTO;
     getSocialUserInfo Y(Lcom/saiuya/blog/model/dto/SocialTokenDTO;)Lcom/saiuya/blog/model/dto/SocialUserInfoDTO;	     
userMapper #Lcom/saiuya/blog/mapper/UserMapper;  Acom/baomidou/mybatisplus/core/conditions/query/LambdaQueryWrapper
    7com/baomidou/mybatisplus/core/toolkit/support/SFunction      apply ;()Lcom/baomidou/mybatisplus/core/toolkit/support/SFunction;
     ! select ([Lcom/baomidou/mybatisplus/core/toolkit/support/SFunction;)Lcom/baomidou/mybatisplus/core/conditions/query/LambdaQueryWrapper;  
 $ % & ' ( +com/saiuya/blog/model/dto/SocialUserInfoDTO getId ()Ljava/lang/String;
  * + , eq 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;  
 / 0 1 2 3 (com/saiuya/blog/model/dto/SocialTokenDTO getLoginType ()Ljava/lang/Integer; 5 0com/baomidou/mybatisplus/core/conditions/Wrapper 7 8 9 : ; !com/saiuya/blog/mapper/UserMapper 	selectOne F(Lcom/baomidou/mybatisplus/core/conditions/Wrapper;)Ljava/lang/Object; = com/saiuya/blog/entity/User
 ? @ A B C java/util/Objects isNull (Ljava/lang/Object;)Z
  E F G saveLoginUser v(Lcom/saiuya/blog/model/dto/SocialTokenDTO;Lcom/saiuya/blog/model/dto/SocialUserInfoDTO;)Lcom/saiuya/blog/entity/User;
 < I ' 3
 K L M N O cn/dev33/satoken/stp/StpUtil checkDisable (Ljava/lang/Object;)V
 K Q R O login
 K T U ( getTokenValue
 < W X Y builder +()Lcom/saiuya/blog/entity/User$UserBuilder;
 $ [ \ ( 	getAvatar
 ^ _ ` a b 'com/saiuya/blog/entity/User$UserBuilder avatar =(Ljava/lang/String;)Lcom/saiuya/blog/entity/User$UserBuilder;
 $ d e ( getNickname
 ^ g h b nickname
 ^ j k b username
 / m n ( getAccessToken
 ^ p q b password
 ^ s t u 	loginType >(Ljava/lang/Integer;)Lcom/saiuya/blog/entity/User$UserBuilder;
 ^ w x y build ()Lcom/saiuya/blog/entity/User; 7 { | } insert (Ljava/lang/Object;)I
  � � X � com/saiuya/blog/entity/UserRole 3()Lcom/saiuya/blog/entity/UserRole$UserRoleBuilder;
 � � � � � /com/saiuya/blog/entity/UserRole$UserRoleBuilder userId F(Ljava/lang/Integer;)Lcom/saiuya/blog/entity/UserRole$UserRoleBuilder;	 � � � � � com/saiuya/blog/enums/RoleEnum USER  Lcom/saiuya/blog/enums/RoleEnum;
 � � � ( 	getRoleId
 � � � � roleId E(Ljava/lang/String;)Lcom/saiuya/blog/entity/UserRole$UserRoleBuilder;
 � � x � #()Lcom/saiuya/blog/entity/UserRole;	  � � � userRoleMapper 'Lcom/saiuya/blog/mapper/UserRoleMapper; � { � %com/saiuya/blog/mapper/UserRoleMapper
 � � � � ( !java/lang/invoke/SerializedLambda getImplMethodName
 � � � � � java/lang/String hashCode ()I '
 � � � C equals 2 � getUsername
 � � � � getImplMethodKind
 � � � ( getFunctionalInterfaceClass 
  �
 � � � (  getFunctionalInterfaceMethodName 
 � � � ( %getFunctionalInterfaceMethodSignature � &(Ljava/lang/Object;)Ljava/lang/Object;
 � � � ( getImplClass =
 � � � ( getImplMethodSignature 3 ( � "java/lang/IllegalArgumentException � Invalid lambda deserialization
 � �  � (Ljava/lang/String;)V � ,com/saiuya/blog/strategy/SocialLoginStrategy RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 9Lcom/saiuya/blog/strategy/impl/AbstractLoginStrategyImpl; >(Lcom/saiuya/blog/model/vo/request/CodeReq;)Ljava/lang/String; user Lcom/saiuya/blog/entity/User; data *Lcom/saiuya/blog/model/vo/request/CodeReq; socialToken *Lcom/saiuya/blog/model/dto/SocialTokenDTO; socialUserInfoDTO -Lcom/saiuya/blog/model/dto/SocialUserInfoDTO; 	existUser StackMapTable � (com/saiuya/blog/model/vo/request/CodeReq MethodParameters #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; newUser userRole !Lcom/saiuya/blog/entity/UserRole; $deserializeLambda$ 7(Ljava/lang/invoke/SerializedLambda;)Ljava/lang/Object; lambda #Ljava/lang/invoke/SerializedLambda; 
SourceFile AbstractLoginStrategyImpl.java (Lorg/springframework/stereotype/Service; BootstrapMethods � H � 1(Lcom/saiuya/blog/entity/User;)Ljava/lang/Object;        �
 < � � (
 < 0
 "java/lang/invoke/LambdaMetafactory altMetafactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses UserBuilder UserRoleBuilder %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles Lookup!    �      �     �    � �  �     �        �   /     *� �    �        �        � �    R �  �  F     x*+� N*-� :*� � Y� � Y�   S� � "  � #� )� � -  -� .� )� 4� 6 � <:� >� *-� DM� M,� H� J,� H� P� S�    �   6    %  '  ) $ * . + = , F ) P . X / c 1 f 4 m 6 t 7 �   H  `  � �    x � �     x � �  f  � �   r � �   k � �  P ( � �  �   2 � c   �  / $ <  �    � < / $ <   �    �   �     �      �    �      �    �    F G  �   �     [� V,� Z� ],� c� f,� #� i+� l� o+� .� r� vN*� -� z W� ~-� H� �� �� �� �� �:*� �� � W-�    �   :    R  S  T  U  V   W & X * Y 5 [ 9 \ B ] H ^ M _ Y ` �   4    [ � �     [ � �    [ � �  * 1 � �  M  � �  �   	 �   �  
 � �  �  �    X*� �L=+� ��   H   ��   /�   !l�L   =+�� �� !=� +�� �� =� +�� �� =�      �             f   �*� �� �*� ��� �� �*� ��� �� �*� ��� �� �*� �ƶ �� �*� �ʶ �� ��   �*� �� �*� ��� �� �*� ��� �� w*� ��� �� k*� �ƶ �� _*� �ʶ �� S� -  �*� �� E*� ��� �� 9*� ��� �� -*� ��� �� !*� �ƶ �� *� �˶ �� 	� "  �� �Yη п    �        �      X � �   �    � , �
� I� I� I  �    � �     �   �   ,   � � � � �  � � � � �  �  � � �	     ^ <
 	 �  	 