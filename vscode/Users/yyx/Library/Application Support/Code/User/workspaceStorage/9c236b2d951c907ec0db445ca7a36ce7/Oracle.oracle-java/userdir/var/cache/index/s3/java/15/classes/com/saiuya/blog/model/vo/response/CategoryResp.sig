����   A k
      java/lang/Object <init> ()V	  	 
   .com/saiuya/blog/model/vo/response/CategoryResp id Ljava/lang/Integer;	     categoryName Ljava/lang/String;	     articleCount
     canEqual (Ljava/lang/Object;)Z
     getId ()Ljava/lang/Integer;
     equals
    !  getArticleCount
  # $ % getCategoryName ()Ljava/lang/String;
  ' ( ) hashCode ()I   + , - makeConcatWithConstants L(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 分类id 	分类名 文章数量 Code LineNumberTable LocalVariableTable this 0Lcom/saiuya/blog/model/vo/response/CategoryResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setCategoryName (Ljava/lang/String;)V setArticleCount o Ljava/lang/Object; other this$id other$id this$articleCount other$articleCount this$categoryName other$categoryName StackMapTable Ljava/lang/Override; PRIME I result $id $articleCount $categoryName toString 
SourceFile CategoryResp.java !Lio/swagger/annotations/ApiModel; description 分类Response Llombok/Data; BootstrapMethods ^ 2CategoryResp(id=, categoryName=, articleCount=) `
 a b c , d $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses g %java/lang/invoke/MethodHandles$Lookup i java/lang/invoke/MethodHandles Lookup !          .     /  0s 1     .     /  0s 2     .     /  0s 3      4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =     4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =  $ %  4   /     *� �    5        6        7 8   9     :   ;     <  0[ s =  !   4   /     *� �    5         6        7 8   9     :   ;     <  0[ s =  > ?  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =  A B  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =  C ?  4   :     *+� �    5        6        7 8         @      9     :   ;     <  0[ s =     4  8  	   �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� :,� :� � � � � �*� ":,� ":� � � � � ��    5        6   \ 	   � 7 8     � D E   x F 8  $ i G E  * c H E  G F I E  M @ J E  l ! K E  r  L E  M   + �  �   �   	�   	 @    D  9     :   ;     N   <  0[ s =     4   9     +� �    5        6        7 8      F E  @    F  9     :   ;     <  0[ s =  ( )  4  .     U;<=*� N;h-� +� -� &`=*� :;h� +� � &`=*� ":;h� +� � &`=�    5        6   >    U 7 8    R O P   P Q P  
 K R E  # 2 S E  >  T E  M   w �     �     �      �      �       �        9     :   ;     N   <  0[ s =  U %  4   <     *� *� "*� � *  �    5        6        7 8   9     :   ;     N   <  0[ s =  V    W .     X  Ys Z ;     [   \     _  ] e   
  f h j 