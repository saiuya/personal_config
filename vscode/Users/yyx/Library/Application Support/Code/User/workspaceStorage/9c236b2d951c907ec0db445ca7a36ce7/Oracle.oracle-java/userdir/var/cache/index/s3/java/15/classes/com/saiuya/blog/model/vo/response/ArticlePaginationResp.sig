����   A k
      java/lang/Object <init> ()V	  	 
   7com/saiuya/blog/model/vo/response/ArticlePaginationResp id Ljava/lang/Integer;	     articleCover Ljava/lang/String;	     articleTitle
     canEqual (Ljava/lang/Object;)Z
     getId ()Ljava/lang/Integer;
     equals
    ! " getArticleCover ()Ljava/lang/String;
  $ % " getArticleTitle
  ' ( ) hashCode ()I   + , - makeConcatWithConstants K(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 文章id 文章缩略图 文章标题 Code LineNumberTable LocalVariableTable this 9Lcom/saiuya/blog/model/vo/response/ArticlePaginationResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setArticleCover (Ljava/lang/String;)V setArticleTitle o Ljava/lang/Object; other this$id other$id this$articleCover other$articleCover this$articleTitle other$articleTitle StackMapTable Ljava/lang/Override; PRIME I result $id $articleCover $articleTitle toString 
SourceFile ArticlePaginationResp.java !Lio/swagger/annotations/ApiModel; description 文章上下篇 Llombok/Data; BootstrapMethods ^ ;ArticlePaginationResp(id=, articleCover=, articleTitle=) `
 a b c , d $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses g %java/lang/invoke/MethodHandles$Lookup i java/lang/invoke/MethodHandles Lookup !          .     /  0s 1     .     /  0s 2     .     /  0s 3      4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =     4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =  ! "  4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =  % "  4   /     *� �    5         6        7 8   9     :   ;     <  0[ s =  > ?  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =  A B  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =  C B  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =     4  8  	   �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� :,� :� � � � � �*� #:,� #:� � � � � ��    5        6   \ 	   � 7 8     � D E   x F 8  $ i G E  * c H E  G F I E  M @ J E  l ! K E  r  L E  M   + �  �   �   	�   	 @    D  9     :   ;     N   <  0[ s =     4   9     +� �    5        6        7 8      F E  @    F  9     :   ;     <  0[ s =  ( )  4  .     U;<=*� N;h-� +� -� &`=*� :;h� +� � &`=*� #:;h� +� � &`=�    5        6   >    U 7 8    R O P   P Q P  
 K R E  # 2 S E  >  T E  M   w �     �     �      �      �       �        9     :   ;     N   <  0[ s =  U "  4   <     *� *� *� #� *  �    5        6        7 8   9     :   ;     N   <  0[ s =  V    W .     X  Ys Z ;     [   \     _  ] e   
  f h j 