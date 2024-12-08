����   A �
      java/lang/Object <init> ()V	  	 
   3com/saiuya/blog/model/vo/response/RecentCommentResp id Ljava/lang/Integer;	     nickname Ljava/lang/String;	     avatar	     commentContent	     
createTime Ljava/time/LocalDateTime;
     canEqual (Ljava/lang/Object;)Z
    ! " getId ()Ljava/lang/Integer;
  $ %  equals
  ' ( ) getNickname ()Ljava/lang/String;
  + , ) 	getAvatar
  . / ) getCommentContent
  1 2 3 getCreateTime ()Ljava/time/LocalDateTime;
  5 6 7 hashCode ()I
 9 : ; < = java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   ? @ A makeConcatWithConstants o(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 评论id 用户昵称 评论内容 评论时间 Code LineNumberTable LocalVariableTable this 5Lcom/saiuya/blog/model/vo/response/RecentCommentResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setNickname (Ljava/lang/String;)V 	setAvatar setCommentContent setCreateTime (Ljava/time/LocalDateTime;)V o Ljava/lang/Object; other this$id other$id this$nickname other$nickname this$avatar other$avatar this$commentContent other$commentContent this$createTime other$createTime StackMapTable Ljava/lang/Override; PRIME I result $id 	$nickname $avatar $commentContent $createTime toString 
SourceFile RecentCommentResp.java !Lio/swagger/annotations/ApiModel; description 最新评论Response Llombok/Data; BootstrapMethods | MRecentCommentResp(id=, nickname=, avatar=, commentContent=, createTime=) ~
  � � @ � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          B     C  Ds E     B     C  Ds F     B     C  Ds F     B     C  Ds G     B     C  Ds H      I   /     *� �    J        K        L M   N     O   P     Q  D[ s R  ! "  I   /     *� �    J        K        L M   N     O   P     Q  D[ s R  ( )  I   /     *� �    J        K        L M   N     O   P     Q  D[ s R  , )  I   /     *� �    J       " K        L M   N     O   P     Q  D[ s R  / )  I   /     *� �    J       ( K        L M   N     O   P     Q  D[ s R  2 3  I   /     *� �    J       . K        L M   N     O   P     Q  D[ s R  S T  I   :     *+� �    J        K        L M         U      N     O   P     Q  D[ s R  V W  I   :     *+� �    J        K        L M         U      N     O   P     Q  D[ s R  X W  I   :     *+� �    J        K        L M         U      N     O   P     Q  D[ s R  Y W  I   :     *+� �    J        K        L M         U      N     O   P     Q  D[ s R  Z [  I   :     *+� �    J        K        L M         U      N     O   P     Q  D[ s R  %   I  �     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� #� �*� &:,� &:� � � � #� �*� *:,� *:� � � � #� �*� -:	,� -:
	� 
� � 	
� #� �*� 0:,� 0:� � � � #� ��    J        K   �    � L M     � \ ]   � ^ M  $ � _ ]  * � ` ]  G � a ]  M � b ]  l k c ]  r e d ]  � F e ] 	 � @ f ] 
 � ! g ]  �  h ]  i   A �  �   �   	�   	�   	�   	 U    \  N     O   P     j   Q  D[ s R     I   9     +� �    J        K        L M      ^ ]  U    ^  N     O   P     Q  D[ s R  6 7  I  �     �;<=*� N;h-� +� -� 4`=*� &:;h� +� � 4`=*� *:;h� +� � 4`=*� -:;h� +� � 4`=*� 0:;h� +� � 4`=�    J        K   R    � L M    � k l   � m l  
 � n ]  # h o ]  > M p ]  Y 2 q ]  t  r ]  i   � 
�     �     �      �      �       �       �        �        �         �          N     O   P     j   Q  D[ s R  s )  I   G     *� *� &*� **� -*� 0� 8� >  �    J        K        L M   N     O   P     j   Q  D[ s R  t    u B     v  ws x P     y   z     }  { �   
  � � � 