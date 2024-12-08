����   A �
      java/lang/Object <init> ()V	  	 
   .com/saiuya/blog/model/vo/response/UserMenuResp id Ljava/lang/Integer;	     parentId	     menuName Ljava/lang/String;	     menuType	     path	     icon	     	component	  ! "  isHidden
  $ % & canEqual (Ljava/lang/Object;)Z
  ( ) * getId ()Ljava/lang/Integer;
  , - & equals
  / 0 * getParentId
  2 3 * getIsHidden
  5 6 7 getMenuName ()Ljava/lang/String;
  9 : 7 getMenuType
  < = 7 getPath
  ? @ 7 getIcon
  B C 7 getComponent
  E F G hashCode ()I   I J K makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 菜单id 父菜单id 菜单名称 #类型（M目录 C菜单 B按钮） 路由地址 菜单图标 菜单组件 是否隐藏 (0否 1是) Code LineNumberTable LocalVariableTable this 0Lcom/saiuya/blog/model/vo/response/UserMenuResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setParentId setMenuName (Ljava/lang/String;)V setMenuType setPath setIcon setComponent setIsHidden o Ljava/lang/Object; other this$id other$id this$parentId other$parentId this$isHidden other$isHidden this$menuName other$menuName this$menuType other$menuType 	this$path 
other$path 	this$icon 
other$icon this$component other$component StackMapTable Ljava/lang/Override; PRIME I result $id 	$parentId 	$isHidden 	$menuName 	$menuType $path $icon 
$component toString 
SourceFile UserMenuResp.java !Lio/swagger/annotations/ApiModel; description 用户菜单Response Llombok/Data; BootstrapMethods � _UserMenuResp(id=, parentId=, menuName=, menuType=, path=, icon=, component=, isHidden=) �
 � � � J � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          L     M  Ns O     L     M  Ns P     L     M  Ns Q     L     M  Ns R     L     M  Ns S     L     M  Ns T     L     M  Ns U  "   L     M  Ns V      W   /     *� �    X        Y        Z [   \     ]   ^     _  N[ s `  ) *  W   /     *� �    X        Y        Z [   \     ]   ^     _  N[ s `  0 *  W   /     *� �    X        Y        Z [   \     ]   ^     _  N[ s `  6 7  W   /     *� �    X       ! Y        Z [   \     ]   ^     _  N[ s `  : 7  W   /     *� �    X       ' Y        Z [   \     ]   ^     _  N[ s `  = 7  W   /     *� �    X       - Y        Z [   \     ]   ^     _  N[ s `  @ 7  W   /     *� �    X       3 Y        Z [   \     ]   ^     _  N[ s `  C 7  W   /     *� �    X       9 Y        Z [   \     ]   ^     _  N[ s `  3 *  W   /     *�  �    X       ? Y        Z [   \     ]   ^     _  N[ s `  a b  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  d b  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  e f  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  g f  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  h f  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  i f  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  j f  W   :     *+� �    X        Y        Z [         c      \     ]   ^     _  N[ s `  k b  W   :     *+�  �    X        Y        Z [      "   c    "  \     ]   ^     _  N[ s `  - &  W  �    F+*� �+� � �+� M,*� #� �*� 'N,� ':-� � � -� +� �*� .:,� .:� � � � +� �*� 1:,� 1:� � � � +� �*� 4:	,� 4:
	� 
� � 	
� +� �*� 8:,� 8:� � � � +� �*� ;:,� ;:� � � � +� �*� >:,� >:� � � � +� �*� A:,� A:� � � � +� ��    X        Y   �   F Z [    F l m  1 n [  $" o m  * p m  G � q m  M � r m  l � s m  r � t m  � � u m 	 � � v m 
 � � w m  � � x m  � k y m  � e z m   F { m  @ | m % ! } m +  ~ m     b �  �   �   	�   	�   	�   	�   	�   	�   	 c    l  \     ]   ^     �   _  N[ s `  % &  W   9     +� �    X        Y        Z [      n m  c    n  \     ]   ^     _  N[ s `  F G  W  "     �;<=*� 'N;h-� +� -� D`=*� .:;h� +� � D`=*� 1:;h� +� � D`=*� 4:;h� +� � D`=*� 8:;h� +� � D`=*� ;:;h� +� � D`=*� >:	;h	� +� 	� D`=*� A:
;h
� +� 
� D`=�    X        Y   p    � Z [    � � �   � � �  
 � � m  # � � m  > � � m  Y � � m  t h � m  � M � m  � 2 � m 	 �  � m 
   � �     �     �      �      �       �       �        �        �         �         �  	        �  	        �  
         �  
         �            �             \     ]   ^     �   _  N[ s `  � 7  W   P     &*� '*� .*� 4*� 8*� ;*� >*� A*� 1� H  �    X        Y       & Z [   \     ]   ^     �   _  N[ s `  �    � L     �  �s � ^     �   �     �  � �   
  � � � 