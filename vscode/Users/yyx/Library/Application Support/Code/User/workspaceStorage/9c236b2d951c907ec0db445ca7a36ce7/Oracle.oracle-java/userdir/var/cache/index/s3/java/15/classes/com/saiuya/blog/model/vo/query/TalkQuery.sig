����   A Z
      (com/saiuya/blog/model/vo/query/PageQuery <init> ()V	  	 
   (com/saiuya/blog/model/vo/query/TalkQuery status Ljava/lang/Integer;
     	getStatus ()Ljava/lang/Integer;      makeConcatWithConstants '(Ljava/lang/Integer;)Ljava/lang/String;
     canEqual (Ljava/lang/Object;)Z
     equals
    java/lang/Object
    ! " hashCode ()I
    RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 状态 (1公开  2私密) Code LineNumberTable LocalVariableTable this *Lcom/saiuya/blog/model/vo/query/TalkQuery; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 	setStatus (Ljava/lang/Integer;)V MethodParameters toString ()Ljava/lang/String; Ljava/lang/Override; o Ljava/lang/Object; other this$status other$status StackMapTable PRIME I result $status 
SourceFile TalkQuery.java !Lio/swagger/annotations/ApiModel; description 说说查询条件 Llombok/Data; Llombok/EqualsAndHashCode; 	callSuper    BootstrapMethods M TalkQuery(status=) O
 P Q R  S $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses V %java/lang/invoke/MethodHandles$Lookup X java/lang/invoke/MethodHandles Lookup !          $     %  &s '      (   /     *� �    )        *        + ,   -     .   /     0  &[ s 1     (   /     *� �    )        *        + ,   -     .   /     0  &[ s 1  2 3  (   :     *+� �    )        *        + ,         4      -     .   /     0  &[ s 1  5 6  (   4     
*� �   �    )        *       
 + ,   -     .   /     7   0  &[ s 1     (   �     M+*� �+� � �+� M,*� � �*+� � �*� N,� :-� � � -� � ��    )        *   4    M + ,     M 8 9   8 : ,  .  ; 9  4  < 9  =    �  	�    4    8  -     .   /     7   0  &[ s 1     (   9     +� �    )        *        + ,      : 9  4    :  -     .   /     0  &[ s 1  ! "  (   �     ";<*� =*� N;h-� +� -� #`=�    )        *   *    " + ,     > ?    @ ?    A 9  =   # �     �      -     .   /     7   0  &[ s 1  B    C $     D  Es F /     G   H  IZ J K     N  L T   
  U W Y 