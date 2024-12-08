����   A �
      java/lang/Object <init> ()V	  	 
   -com/saiuya/blog/model/vo/response/CommentResp id Ljava/lang/Integer;	     fromUid	     fromNickname Ljava/lang/String;	     webSite	     avatar	     commentContent	     	likeCount	  ! "  
replyCount	  $ % & replyVOList Ljava/util/List;	  ( ) * 
createTime Ljava/time/LocalDateTime;
  , - . canEqual (Ljava/lang/Object;)Z
  0 1 2 getId ()Ljava/lang/Integer;
  4 5 . equals
  7 8 2 
getFromUid
  : ; 2 getLikeCount
  = > 2 getReplyCount
  @ A B getFromNickname ()Ljava/lang/String;
  D E B 
getWebSite
  G H B 	getAvatar
  J K B getCommentContent
  M N O getReplyVOList ()Ljava/util/List;
  Q R S getCreateTime ()Ljava/time/LocalDateTime;
  U V W hashCode ()I
 Y Z [ \ ] java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   _ ` a makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 评论id 评论用户id 昵称 个人网站 头像 评论内容 	点赞数 	回复量 	Signature ?Ljava/util/List<Lcom/saiuya/blog/model/vo/response/ReplyResp;>; 回复列表 评论时间 Code LineNumberTable LocalVariableTable this /Lcom/saiuya/blog/model/vo/response/CommentResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all A()Ljava/util/List<Lcom/saiuya/blog/model/vo/response/ReplyResp;>; setId (Ljava/lang/Integer;)V MethodParameters 
setFromUid setFromNickname (Ljava/lang/String;)V 
setWebSite 	setAvatar setCommentContent setLikeCount setReplyCount setReplyVOList (Ljava/util/List;)V LocalVariableTypeTable B(Ljava/util/List<Lcom/saiuya/blog/model/vo/response/ReplyResp;>;)V setCreateTime (Ljava/time/LocalDateTime;)V o Ljava/lang/Object; other this$id other$id this$fromUid other$fromUid this$likeCount other$likeCount this$replyCount other$replyCount this$fromNickname other$fromNickname this$webSite other$webSite this$avatar other$avatar this$commentContent other$commentContent this$replyVOList other$replyVOList this$createTime other$createTime StackMapTable Ljava/lang/Override; PRIME I result $id $fromUid 
$likeCount $replyCount $fromNickname $webSite $avatar $commentContent $replyVOList $createTime toString 
SourceFile CommentResp.java !Lio/swagger/annotations/ApiModel; description 评论Response Llombok/Data; BootstrapMethods � �CommentResp(id=, fromUid=, fromNickname=, webSite=, avatar=, commentContent=, likeCount=, replyCount=, replyVOList=, createTime=) �
 � � � ` � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !     
     b     c  ds e     b     c  ds f     b     c  ds g     b     c  ds h     b     c  ds i     b     c  ds j     b     c  ds k  "   b     c  ds l  % &  m    n b     c  ds o  ) *  b     c  ds p      q   /     *� �    r        s        t u   v     w   x     y  d[ s z  1 2  q   /     *� �    r        s        t u   v     w   x     y  d[ s z  8 2  q   /     *� �    r        s        t u   v     w   x     y  d[ s z  A B  q   /     *� �    r       # s        t u   v     w   x     y  d[ s z  E B  q   /     *� �    r       ) s        t u   v     w   x     y  d[ s z  H B  q   /     *� �    r       / s        t u   v     w   x     y  d[ s z  K B  q   /     *� �    r       5 s        t u   v     w   x     y  d[ s z  ; 2  q   /     *� �    r       ; s        t u   v     w   x     y  d[ s z  > 2  q   /     *�  �    r       A s        t u   v     w   x     y  d[ s z  N O  q   /     *� #�    r       G s        t u   m    { v     w   x     y  d[ s z  R S  q   /     *� '�    r       M s        t u   v     w   x     y  d[ s z  | }  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z   }  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � �  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � �  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � �  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � �  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � }  q   :     *+� �    r        s        t u         ~      v     w   x     y  d[ s z  � }  q   :     *+�  �    r        s        t u      "   ~    "  v     w   x     y  d[ s z  � �  q   L     *+� #�    r        s        t u      % &  �        % n  ~    %  m    � v     w   x     y  d[ s z  � �  q   :     *+� '�    r        s        t u      ) *  ~    )  v     w   x     y  d[ s z  5 .  q      �+*� �+� � �+� M,*� +� �*� /N,� /:-� � � -� 3� �*� 6:,� 6:� � � � 3� �*� 9:,� 9:� � � � 3� �*� <:	,� <:
	� 
� � 	
� 3� �*� ?:,� ?:� � � � 3� �*� C:,� C:� � � � 3� �*� F:,� F:� � � � 3� �*� I:,� I:� � � � 3� �*� L:,� L:� � � � 3� �*� P:,� P:� � � � 3� ��    r        s   �   � t u    � � �  { � u  $l � �  *f � �  GI � �  MC � �  l$ � �  r � �  � � � � 	 � � � � 
 � � � �  � � � �  � � � �  � � � �   � � �  � � � % k � � + e � � J F � � P @ � � o ! � � u  � �  �   x !�  �   �   	�   	�   	�   	�   	�   	�   	�   	�   	 ~    �  v     w   x     �   y  d[ s z  - .  q   9     +� �    r        s        t u      � �  ~    �  v     w   x     y  d[ s z  V W  q      ;<=*� /N;h-� +� -� T`=*� 6:;h� +� � T`=*� 9:;h� +� � T`=*� <:;h� +� � T`=*� ?:;h� +� � T`=*� C:;h� +� � T`=*� F:	;h	� +� 	� T`=*� I:
;h
� +� 
� T`=*� L:;h� +� � T`=*� P:;h� +� � T`=�    r        s   �    t u    � �   � �  
 � �  # � � �  > � � �  Y � � �  t � � �  � � � �  � h � � 	 � M � � 
 � 2 � �  �  � �  �  Z �     �     �      �      �       �       �        �        �         �         �  	        �  	        �  
         �  
         �            �            �             �             �              �               v     w   x     �   y  d[ s z  � B  q   ^ 
    4*� /*� 6*� ?*� C*� F*� I*� 9*� <*� L� X*� P� X� ^  �    r        s       4 t u   v     w   x     �   y  d[ s z  �    � b     �  �s � x     �   �     �  � �   
  � � � 