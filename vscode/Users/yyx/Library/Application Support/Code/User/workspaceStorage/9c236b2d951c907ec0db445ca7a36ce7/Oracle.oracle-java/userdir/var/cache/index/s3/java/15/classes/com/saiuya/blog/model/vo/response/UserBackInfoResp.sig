����   A �
      java/lang/Object <init> ()V	  	 
   2com/saiuya/blog/model/vo/response/UserBackInfoResp id Ljava/lang/Integer;	     avatar Ljava/lang/String;	     roleList Ljava/util/List;	     permissionList  Jcom/saiuya/blog/model/vo/response/UserBackInfoResp$UserBackInfoRespBuilder
  
     canEqual (Ljava/lang/Object;)Z
    ! " getId ()Ljava/lang/Integer;
  $ %  equals
  ' ( ) 	getAvatar ()Ljava/lang/String;
  + , - getRoleList ()Ljava/util/List;
  / 0 - getPermissionList
  2 3 4 hashCode ()I
 6 7 8 9 : java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   < = > makeConcatWithConstants ](Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 用户id 头像 	Signature $Ljava/util/List<Ljava/lang/String;>; 角色 权限标识 H(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V Code LineNumberTable LocalVariableTable this 4Lcom/saiuya/blog/model/vo/response/UserBackInfoResp; LocalVariableTypeTable MethodParameters p(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;)V RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all builder N()Lcom/saiuya/blog/model/vo/response/UserBackInfoResp$UserBackInfoRespBuilder; &()Ljava/util/List<Ljava/lang/String;>; setId (Ljava/lang/Integer;)V 	setAvatar (Ljava/lang/String;)V setRoleList (Ljava/util/List;)V '(Ljava/util/List<Ljava/lang/String;>;)V setPermissionList o Ljava/lang/Object; other this$id other$id this$avatar other$avatar this$roleList other$roleList this$permissionList other$permissionList StackMapTable Ljava/lang/Override; PRIME I result $id $avatar 	$roleList $permissionList toString 
SourceFile UserBackInfoResp.java !Lio/swagger/annotations/ApiModel; description  后台登录用户信息Response Llombok/Data; Llombok/Builder; NestMembers BootstrapMethods � >UserBackInfoResp(id=, avatar=, roleList=, permissionList=) �
 � � � = � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses UserBackInfoRespBuilder � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          ?     @  As B     ?     @  As C     D    E ?     @  As F     D    E ?     @  As G     H  I   �     *� *+� *,� *-� *� �    J        K   4     L M                           N         E      E  O            D    P Q     R   S     T  A[ s U 	 V W  I          � Y� �    J        Q     R   S     T  A[ s U  ! "  I   /     *� �    J        K        L M   Q     R   S     T  A[ s U  ( )  I   /     *� �    J        K        L M   Q     R   S     T  A[ s U  , -  I   /     *� �    J       % K        L M   D    X Q     R   S     T  A[ s U  0 -  I   /     *� �    J       + K        L M   D    X Q     R   S     T  A[ s U  Y Z  I   :     *+� �    J        K        L M         O      Q     R   S     T  A[ s U  [ \  I   :     *+� �    J        K        L M         O      Q     R   S     T  A[ s U  ] ^  I   L     *+� �    J        K        L M         N         E  O      D    _ Q     R   S     T  A[ s U  ` ^  I   L     *+� �    J        K        L M         N         E  O      D    _ Q     R   S     T  A[ s U  %   I  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� #� �*� &:,� &:� � � � #� �*� *:,� *:� � � � #� �*� .:	,� .:
	� 
� � 	
� #� ��    J        K   p    � L M     � a b   � c M  $ � d b  * � e b  G k f b  M e g b  l F h b  r @ i b  � ! j b 	 �  k b 
 l   6 �  �   �   	�   	�   	 O    a  Q     R   S     m   T  A[ s U     I   9     +� �    J        K        L M      c b  O    c  Q     R   S     T  A[ s U  3 4  I  �     p;<=*� N;h-� +� -� 1`=*� &:;h� +� � 1`=*� *:;h� +� � 1`=*� .:;h� +� � 1`=�    J        K   H    p L M    m n o   k p o  
 f q b  # M r b  > 2 s b  Y  t b  l   � �     �     �      �      �       �       �        �         Q     R   S     m   T  A[ s U  u )  I   F     *� *� &*� *� 5*� .� 5� ;  �    J        K        L M   Q     R   S     m   T  A[ s U  v    w ?     x  ys z S   
  {   |   }      ~     �   �       � 	 � � � 