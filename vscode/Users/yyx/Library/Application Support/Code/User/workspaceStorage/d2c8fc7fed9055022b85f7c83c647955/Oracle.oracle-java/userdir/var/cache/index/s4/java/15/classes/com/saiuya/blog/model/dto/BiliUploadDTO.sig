����   A �	      'com/saiuya/blog/model/dto/BiliUploadDTO code Ljava/lang/String;	   	  message	     ttl Ljava/lang/Integer;	     data 4Lcom/saiuya/blog/model/dto/BiliUploadDTO$UploadData;
     canEqual (Ljava/lang/Object;)Z
     getTtl ()Ljava/lang/Integer;
      java/lang/Object equals
    ! " getCode ()Ljava/lang/String;
  $ % " 
getMessage
  ' ( ) getData 6()Lcom/saiuya/blog/model/dto/BiliUploadDTO$UploadData;
  + , - hashCode ()I
 / 0 1 2 3 java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   5 6 7 makeConcatWithConstants ](Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
  9 : ; <init> ()V RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 	状态码 提示信息 返回数据 Code LineNumberTable LocalVariableTable this )Lcom/saiuya/blog/model/dto/BiliUploadDTO; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setCode (Ljava/lang/String;)V MethodParameters 
setMessage setTtl (Ljava/lang/Integer;)V setData 7(Lcom/saiuya/blog/model/dto/BiliUploadDTO$UploadData;)V o Ljava/lang/Object; other this$ttl 	other$ttl 	this$code 
other$code this$message other$message 	this$data 
other$data StackMapTable Ljava/lang/Override; PRIME I result $ttl $code $message $data toString n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/saiuya/blog/model/dto/BiliUploadDTO$UploadData;)V 
SourceFile BiliUploadDTO.java !Lio/swagger/annotations/ApiModel; description B站图片上传返回DTO Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; NestMembers t 2com/saiuya/blog/model/dto/BiliUploadDTO$UploadData BootstrapMethods w /BiliUploadDTO(code=, message=, ttl=, data=) y
 z { | 6 } $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses 
UploadData � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          <     =  >s ?  	   <     =  >s @     <     =  >s      <     =  >s A   ! "  B   /     *� �    C        D        E F   G     H   I     J  >[ s K  % "  B   /     *� �    C       ! D        E F   G     H   I     J  >[ s K     B   /     *� 
�    C       ' D        E F   G     H   I     J  >[ s K  ( )  B   /     *� �    C       - D        E F   G     H   I     J  >[ s K  L M  B   :     *+� �    C        D        E F         N      G     H   I     J  >[ s K  O M  B   :     *+� �    C        D        E F      	   N    	  G     H   I     J  >[ s K  P Q  B   :     *+� 
�    C        D        E F         N      G     H   I     J  >[ s K  R S  B   :     *+� �    C        D        E F         N      G     H   I     J  >[ s K     B  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� :,� :� � � � � �*� #:,� #:� � � � � �*� &:	,� &:
	� 
� � 	
� � ��    C        D   p    � E F     � T U   � V F  $ � W U  * � X U  G k Y U  M e Z U  l F [ U  r @ \ U  � ! ] U 	 �  ^ U 
 _   6 �  �   �   	�   	�   	 N    T  G     H   I     `   J  >[ s K     B   9     +� �    C        D        E F      V U  N    V  G     H   I     J  >[ s K  , -  B  �     p;<=*� N;h-� +� -� *`=*� :;h� +� � *`=*� #:;h� +� � *`=*� &:;h� +� � *`=�    C        D   H    p E F    m a b   k c b  
 f d U  # M e U  > 2 f U  Y  g U  _   � �     �     �      �      �       �       �        �         G     H   I     `   J  >[ s K  h "  B   C     *� *� #*� *� &� .� 4  �    C        D        E F   G     H   I     `   J  >[ s K  : ;  B   /     *� 8�    C        D        E F   G     H   I     J  >[ s K  : i  B   l     *� 8*+� *,� *-� 
*� �    C        D   4     E F            	               N      	      G     H   I     J  >[ s K  j    k <     l  ms n I     o   p   q   r     s u     x  v ~     s   	 � � � 