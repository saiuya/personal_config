����   A s
      java/lang/Object <init> ()V	  	 
   (com/saiuya/blog/model/dto/GitUserInfoDTO id Ljava/lang/String;	     
avatar_url	     name	     login
     canEqual (Ljava/lang/Object;)Z
     getId ()Ljava/lang/String;
      equals
  " #  getAvatar_url
  % &  getName
  ( )  getLogin
  + , - hashCode ()I   / 0 1 makeConcatWithConstants \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 用户id 头像 昵称 登录 Code LineNumberTable LocalVariableTable this *Lcom/saiuya/blog/model/dto/GitUserInfoDTO; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/String;)V MethodParameters setAvatar_url setName setLogin o Ljava/lang/Object; other this$id other$id this$avatar_url other$avatar_url 	this$name 
other$name 
this$login other$login StackMapTable Ljava/lang/Override; PRIME I result $id $avatar_url $name $login toString 
SourceFile GitUserInfoDTO.java !Lio/swagger/annotations/ApiModel; description Git用户信息DTO Llombok/Data; BootstrapMethods f 3GitUserInfoDTO(id=, avatar_url=, name=, login=) h
 i j k 0 l $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses o %java/lang/invoke/MethodHandles$Lookup q java/lang/invoke/MethodHandles Lookup !          2     3  4s 5     2     3  4s 6     2     3  4s 7     2     3  4s 8      9   /     *� �    :        ;        < =   >     ?   @     A  4[ s B     9   /     *� �    :        ;        < =   >     ?   @     A  4[ s B  #   9   /     *� �    :        ;        < =   >     ?   @     A  4[ s B  &   9   /     *� �    :         ;        < =   >     ?   @     A  4[ s B  )   9   /     *� �    :       & ;        < =   >     ?   @     A  4[ s B  C D  9   :     *+� �    :        ;        < =         E      >     ?   @     A  4[ s B  F D  9   :     *+� �    :        ;        < =         E      >     ?   @     A  4[ s B  G D  9   :     *+� �    :        ;        < =         E      >     ?   @     A  4[ s B  H D  9   :     *+� �    :        ;        < =         E      >     ?   @     A  4[ s B      9  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� !:,� !:� � � � � �*� $:,� $:� � � � � �*� ':	,� ':
	� 
� � 	
� � ��    :        ;   p    � < =     � I J   � K =  $ � L J  * � M J  G k N J  M e O J  l F P J  r @ Q J  � ! R J 	 �  S J 
 T   6 �  �   �   	�   	�   	 E    I  >     ?   @     U   A  4[ s B     9   9     +� �    :        ;        < =      K J  E    K  >     ?   @     A  4[ s B  , -  9  �     p;<=*� N;h-� +� -� *`=*� !:;h� +� � *`=*� $:;h� +� � *`=*� ':;h� +� � *`=�    :        ;   H    p < =    m V W   k X W  
 f Y J  # M Z J  > 2 [ J  Y  \ J  T   � �     �     �      �      �       �       �        �         >     ?   @     U   A  4[ s B  ]   9   @     *� *� !*� $*� '� .  �    :        ;        < =   >     ?   @     U   A  4[ s B  ^    _ 2     `  as b @     c   d     g  e m   
  n p r 