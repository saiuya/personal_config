����   A v
      java/lang/Object <init> ()V	  	 
   .com/saiuya/blog/model/vo/request/CarouselReqVo id Ljava/lang/Integer;	     imgUrl Ljava/lang/String;	     status	     remark
     canEqual (Ljava/lang/Object;)Z
     getId ()Ljava/lang/Integer;
    !  equals
  # $  	getStatus
  & ' ( 	getImgUrl ()Ljava/lang/String;
  * + ( 	getRemark
  - . / hashCode ()I   1 2 3 makeConcatWithConstants ^(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Ljakarta/validation/constraints/NotBlank; message imgUrl is null RuntimeVisibleTypeAnnotations (Ljakarta/validation/constraints/NotNull; status is null Code LineNumberTable LocalVariableTable this 0Lcom/saiuya/blog/model/vo/request/CarouselReqVo; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all setId (Ljava/lang/Integer;)V MethodParameters 	setImgUrl (Ljava/lang/String;)V 	setStatus 	setRemark o Ljava/lang/Object; other this$id other$id this$status other$status this$imgUrl other$imgUrl this$remark other$remark StackMapTable Ljava/lang/Override; PRIME I result $id $status $imgUrl $remark toString 
SourceFile CarouselReqVo.java !Lio/swagger/annotations/ApiModel; 轮播图Request Llombok/Data; BootstrapMethods i 1CarouselReqVo(id=, imgUrl=, status=, remark=) k
 l m n 2 o $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses r %java/lang/invoke/MethodHandles$Lookup t java/lang/invoke/MethodHandles Lookup !               4     5  6s 7 8      5  6s 7     4     9  6s : 8      9  6s :           ;   /     *� �    <        =        > ?   @     A   B     C  D[ s E     ;   /     *� �    <        =        > ?   @     A   B     C  D[ s E  ' (  ;   /     *� �    <        =        > ?   @     A   B     C  D[ s E  $   ;   /     *� �    <       " =        > ?   @     A   B     C  D[ s E  + (  ;   /     *� �    <       ' =        > ?   @     A   B     C  D[ s E  F G  ;   :     *+� �    <        =        > ?         H      @     A   B     C  D[ s E  I J  ;   :     *+� �    <        =        > ?         H      @     A   B     C  D[ s E  K G  ;   :     *+� �    <        =        > ?         H      @     A   B     C  D[ s E  L J  ;   :     *+� �    <        =        > ?         H      @     A   B     C  D[ s E  !   ;  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� ":,� ":� � � � � �*� %:,� %:� � � � � �*� ):	,� ):
	� 
� � 	
� � ��    <        =   p    � > ?     � M N   � O ?  $ � P N  * � Q N  G k R N  M e S N  l F T N  r @ U N  � ! V N 	 �  W N 
 X   6 �  �   �   	�   	�   	 H    M  @     A   B     Y   C  D[ s E     ;   9     +� �    <        =        > ?      O N  H    O  @     A   B     C  D[ s E  . /  ;  �     p;<=*� N;h-� +� -� ,`=*� ":;h� +� � ,`=*� %:;h� +� � ,`=*� ):;h� +� � ,`=�    <        =   H    p > ?    m Z [   k \ [  
 f ] N  # M ^ N  > 2 _ N  Y  ` N  X   � �     �     �      �      �       �       �        �         @     A   B     Y   C  D[ s E  a (  ;   @     *� *� %*� "*� )� 0  �    <        =        > ?   @     A   B     Y   C  D[ s E  b    c 4     d  Ds e B     f   g     j  h p   
  q s u 