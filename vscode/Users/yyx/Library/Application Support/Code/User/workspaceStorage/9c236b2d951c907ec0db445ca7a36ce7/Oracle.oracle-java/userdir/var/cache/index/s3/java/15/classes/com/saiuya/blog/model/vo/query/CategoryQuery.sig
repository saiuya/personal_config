����   A Y
      (com/saiuya/blog/model/vo/query/PageQuery <init> ()V	  	 
   ,com/saiuya/blog/model/vo/query/CategoryQuery keyword Ljava/lang/String;
     
getKeyword ()Ljava/lang/String;      makeConcatWithConstants &(Ljava/lang/String;)Ljava/lang/String;
     canEqual (Ljava/lang/Object;)Z
     equals
    java/lang/Object
    ! " hashCode ()I
    RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 搜索内容 Code LineNumberTable LocalVariableTable this .Lcom/saiuya/blog/model/vo/query/CategoryQuery; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 
setKeyword (Ljava/lang/String;)V MethodParameters toString Ljava/lang/Override; o Ljava/lang/Object; other this$keyword other$keyword StackMapTable PRIME I result $keyword 
SourceFile CategoryQuery.java !Lio/swagger/annotations/ApiModel; description 分类查询条件 Llombok/Data; Llombok/EqualsAndHashCode; 	callSuper    BootstrapMethods L CategoryQuery(keyword=) N
 O P Q  R $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses U %java/lang/invoke/MethodHandles$Lookup W java/lang/invoke/MethodHandles Lookup !          $     %  &s '      (   /     *� �    )        *        + ,   -     .   /     0  &[ s 1     (   /     *� �    )        *        + ,   -     .   /     0  &[ s 1  2 3  (   :     *+� �    )        *        + ,         4      -     .   /     0  &[ s 1  5   (   4     
*� �   �    )        *       
 + ,   -     .   /     6   0  &[ s 1     (   �     M+*� �+� � �+� M,*� � �*+� � �*� N,� :-� � � -� � ��    )        *   4    M + ,     M 7 8   8 9 ,  .  : 8  4  ; 8  <    �  	�    4    7  -     .   /     6   0  &[ s 1     (   9     +� �    )        *        + ,      9 8  4    9  -     .   /     0  &[ s 1  ! "  (   �     ";<*� =*� N;h-� +� -� #`=�    )        *   *    " + ,     = >    ? >    @ 8  <   # �     �      -     .   /     6   0  &[ s 1  A    B $     C  Ds E /     F   G  HZ I J     M  K S   
  T V X 