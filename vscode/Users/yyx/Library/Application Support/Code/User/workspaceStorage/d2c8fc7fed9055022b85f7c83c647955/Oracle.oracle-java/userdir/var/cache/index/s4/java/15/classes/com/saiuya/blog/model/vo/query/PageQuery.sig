����   A q	      (com/saiuya/blog/model/vo/query/PageQuery current Ljava/lang/Integer;	  	 
   %com/saiuya/blog/constant/PageConstant DEFAULT_CURRENT
      java/lang/Integer intValue ()I
     getSize ()Ljava/lang/Integer;
     valueOf (I)Ljava/lang/Integer;	     size	     MY_SIZE
 ! " # $ % java/lang/Object <init> ()V
  ' ( ) canEqual (Ljava/lang/Object;)Z
  + ,  
getCurrent
 ! . / ) equals
 ! 1 2  hashCode   4 5 6 makeConcatWithConstants :(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 	当前页 required    条数 Code LineNumberTable LocalVariableTable this *Lcom/saiuya/blog/model/vo/query/PageQuery; StackMapTable RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 
setCurrent (Ljava/lang/Integer;)V MethodParameters setSize o Ljava/lang/Object; other this$current other$current 	this$size 
other$size Ljava/lang/Override; PRIME I result $current $size toString ()Ljava/lang/String; 
SourceFile PageQuery.java !Lio/swagger/annotations/ApiModel; description 分页查询条件 Llombok/Data; BootstrapMethods d PageQuery(current=, size=) f
 g h i 5 j $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses m %java/lang/invoke/MethodHandles$Lookup o java/lang/invoke/MethodHandles Lookup !  !        7     8  9s : ;Z <     7     8  9s = ;Z < 	  ,   >   d     /*� � � � d*� � h� *� � d*� � h� �    ?        @       / A B   C    P     >   I     *� � 	� � *� �    ?       # @        A B   C    C   $ %  >   /     *�  �    ?        @        A B   D     E   F     G  9[ s H  I J  >   :     *+� �    ?        @        A B         K      D     E   F     G  9[ s H  L J  >   :     *+� �    ?        @        A B         K      D     E   F     G  9[ s H  / )  >   �     h+*� �+� � �+� M,*� &� �*� *N,� *:-� � � -� -� �*� :,� :� � � � -� ��    ?        @   H    h A B     h M N   S O B  $ D P N  * > Q N  G ! R N  M  S N  C     	�  �  ! !�  ! !	 K    M  D     E   F     T   G  9[ s H  ( )  >   9     +� �    ?        @        A B      O N  K    O  D     E   F     G  9[ s H  2   >   �     :;<=*� *N;h-� +� -� 0`=*� :;h� +� � 0`=�    ?        @   4    : A B    7 U V   5 W V  
 0 X N  #  Y N  C   J �    ! �    ! �    ! ! �    ! !  D     E   F     T   G  9[ s H  Z [  >   8     *� **� � 3  �    ?        @        A B   D     E   F     T   G  9[ s H  \    ] 7     ^  _s ` F     a   b     e  c k   
  l n p 