����   A g
      (com/saiuya/blog/model/vo/query/PageQuery <init> ()V	  	 
   (com/saiuya/blog/model/vo/query/MenuQuery keyword Ljava/lang/String;	     	isDisable Ljava/lang/Integer;
     
getKeyword ()Ljava/lang/String;
     getIsDisable ()Ljava/lang/Integer;      makeConcatWithConstants 9(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
      canEqual (Ljava/lang/Object;)Z
  " #   equals
 % " & java/lang/Object
  ( ) * hashCode ()I
 % ( RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 搜索内容 是否禁用 (0否 1是) Code LineNumberTable LocalVariableTable this *Lcom/saiuya/blog/model/vo/query/MenuQuery; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 
setKeyword (Ljava/lang/String;)V MethodParameters setIsDisable (Ljava/lang/Integer;)V toString Ljava/lang/Override; o Ljava/lang/Object; other this$isDisable other$isDisable this$keyword other$keyword StackMapTable PRIME I result 
$isDisable $keyword 
SourceFile MenuQuery.java !Lio/swagger/annotations/ApiModel; description 菜单查询条件 Llombok/Data; Llombok/EqualsAndHashCode; 	callSuper    BootstrapMethods Z !MenuQuery(keyword=, isDisable=) \
 ] ^ _  ` $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses c %java/lang/invoke/MethodHandles$Lookup e java/lang/invoke/MethodHandles Lookup !          ,     -  .s /     ,     -  .s 0 	     1   /     *� �    2        3        4 5   6     7   8     9  .[ s :     1   /     *� �    2        3        4 5   6     7   8     9  .[ s :     1   /     *� �    2        3        4 5   6     7   8     9  .[ s :  ; <  1   :     *+� �    2        3        4 5         =      6     7   8     9  .[ s :  > ?  1   :     *+� �    2        3        4 5         =      6     7   8     9  .[ s :  @   1   8     *� *� �   �    2        3        4 5   6     7   8     A   9  .[ s :  #    1   �     r+*� �+� � �+� M,*� � �*+� !� �*� N,� :-� � � -� $� �*� :,� :� � � � $� ��    2        3   H    r 4 5     r B C   ] D 5  . D E C  4 > F C  Q ! G C  W  H C  I   ! 
�  	�  % %�  % %	 =    B  6     7   8     A   9  .[ s :      1   9     +� �    2        3        4 5      D C  =    D  6     7   8     9  .[ s :  ) *  1   �     =;<*� '=*� N;h-� +� -� +`=*� :;h� +� � +`=�    2        3   4    = 4 5    : J K   5 L K   0 M C  &  N C  I   J �    % �    % �    % % �    % %  6     7   8     A   9  .[ s :  O    P ,     Q  Rs S 8     T   U  VZ W X     [  Y a   
  b d f 