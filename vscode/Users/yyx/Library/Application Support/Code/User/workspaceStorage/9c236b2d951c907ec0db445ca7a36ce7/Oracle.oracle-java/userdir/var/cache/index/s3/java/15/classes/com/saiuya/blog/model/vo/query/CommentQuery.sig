����   A }
      (com/saiuya/blog/model/vo/query/PageQuery <init> ()V	  	 
   +com/saiuya/blog/model/vo/query/CommentQuery keyword Ljava/lang/String;	     typeId Ljava/lang/Integer;	     commentType	     isCheck
     
getKeyword ()Ljava/lang/String;
     	getTypeId ()Ljava/lang/Integer;
    !  getCommentType
  # $  
getIsCheck   & ' ( makeConcatWithConstants _(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
  * + , canEqual (Ljava/lang/Object;)Z
  . / , equals
 1 . 2 java/lang/Object
  4 5 6 hashCode ()I
 1 4 RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 搜索内容 类型id 评论主题类型 是否通过 (0否 1是) Code LineNumberTable LocalVariableTable this -Lcom/saiuya/blog/model/vo/query/CommentQuery; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 
setKeyword (Ljava/lang/String;)V MethodParameters 	setTypeId (Ljava/lang/Integer;)V setCommentType 
setIsCheck toString Ljava/lang/Override; o Ljava/lang/Object; other this$typeId other$typeId this$commentType other$commentType this$isCheck other$isCheck this$keyword other$keyword StackMapTable PRIME I result $typeId $commentType $isCheck $keyword 
SourceFile CommentQuery.java !Lio/swagger/annotations/ApiModel; description 评论查询条件 Llombok/Data; Llombok/EqualsAndHashCode; 	callSuper    BootstrapMethods p ;CommentQuery(keyword=, typeId=, commentType=, isCheck=) r
 s t u ' v $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses y %java/lang/invoke/MethodHandles$Lookup { java/lang/invoke/MethodHandles Lookup !          8     9  :s ;     8     9  :s <     8     9  :s =     8     9  :s >      ?   /     *� �    @        A        B C   D     E   F     G  :[ s H     ?   /     *� �    @        A        B C   D     E   F     G  :[ s H     ?   /     *� �    @        A        B C   D     E   F     G  :[ s H  !   ?   /     *� �    @       # A        B C   D     E   F     G  :[ s H  $   ?   /     *� �    @       ) A        B C   D     E   F     G  :[ s H  I J  ?   :     *+� �    @        A        B C         K      D     E   F     G  :[ s H  L M  ?   :     *+� �    @        A        B C         K      D     E   F     G  :[ s H  N M  ?   :     *+� �    @        A        B C         K      D     E   F     G  :[ s H  O M  ?   :     *+� �    @        A        B C         K      D     E   F     G  :[ s H  P   ?   @     *� *� *� *� "� %  �    @        A        B C   D     E   F     Q   G  :[ s H  / ,  ?  �     �+*� �+� � �+� M,*� )� �*+� -� �*� N,� :-� � � -� 0� �*� :,� :� � � � 0� �*� ":,� ":� � � � 0� �*� :	,� :
	� 
� � 	
� 0� ��    @        A   p    � B C     � R S   � T C  . � U S  4 � V S  Q k W S  W e X S  v F Y S  | @ Z S  � ! [ S 	 �  \ S 
 ]   7 �  	�  1 1�  1 1	�  1 1	�  1 1	 K    R  D     E   F     Q   G  :[ s H  + ,  ?   9     +� �    @        A        B C      T S  K    T  D     E   F     G  :[ s H  5 6  ?  �     s;<*� 3=*� N;h-� +� -� 7`=*� :;h� +� � 7`=*� ":;h� +� � 7`=*� :;h� +� � 7`=�    @        A   H    s B C    p ^ _   k ` _   f a S  & M b S  A 2 c S  \  d S  ]   � �    1 �    1 �    1 1 �    1 1 �    1 1 1 �    1 1 1 �    1 1 1 1 �    1 1 1 1  D     E   F     Q   G  :[ s H  e    f 8     g  hs i F     j   k  lZ m n     q  o w   
  x z | 