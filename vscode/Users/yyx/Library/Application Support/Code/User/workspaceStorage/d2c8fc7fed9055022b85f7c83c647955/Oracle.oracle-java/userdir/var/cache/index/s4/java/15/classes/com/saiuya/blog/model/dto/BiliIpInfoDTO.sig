����   A �	      'com/saiuya/blog/model/dto/BiliIpInfoDTO code Ljava/lang/Integer;	   	 
 message Ljava/lang/String;	    
 msg	     data 4Lcom/saiuya/blog/model/dto/BiliIpInfoDTO$IpInfoData;
     canEqual (Ljava/lang/Object;)Z
     getCode ()Ljava/lang/Integer;
      java/lang/Object equals
    ! " 
getMessage ()Ljava/lang/String;
  $ % " getMsg
  ' ( ) getData 6()Lcom/saiuya/blog/model/dto/BiliIpInfoDTO$IpInfoData;
  + , - hashCode ()I
 / 0 1 2 3 java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   5 6 7 makeConcatWithConstants ](Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  9 : ; <init> ()V RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 	状态码 提示信息 返回数据 Code LineNumberTable LocalVariableTable this )Lcom/saiuya/blog/model/dto/BiliIpInfoDTO; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setCode (Ljava/lang/Integer;)V MethodParameters 
setMessage (Ljava/lang/String;)V setMsg setData 7(Lcom/saiuya/blog/model/dto/BiliIpInfoDTO$IpInfoData;)V o Ljava/lang/Object; other 	this$code 
other$code this$message other$message this$msg 	other$msg 	this$data 
other$data StackMapTable Ljava/lang/Override; PRIME I result $code $message $msg $data toString n(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/saiuya/blog/model/dto/BiliIpInfoDTO$IpInfoData;)V 
SourceFile BiliIpInfoDTO.java !Lio/swagger/annotations/ApiModel; description B站IP地址返回DTO Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; NestMembers t 2com/saiuya/blog/model/dto/BiliIpInfoDTO$IpInfoData BootstrapMethods w /BiliIpInfoDTO(code=, message=, msg=, data=) y
 z { | 6 } $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses 
IpInfoData � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          <     =  >s ?  	 
  <     =  >s @   
  <     =  >s @     <     =  >s A      B   /     *� �    C        D        E F   G     H   I     J  >[ s K  ! "  B   /     *� �    C        D        E F   G     H   I     J  >[ s K  % "  B   /     *� �    C       % D        E F   G     H   I     J  >[ s K  ( )  B   /     *� �    C       + D        E F   G     H   I     J  >[ s K  L M  B   :     *+� �    C        D        E F         N      G     H   I     J  >[ s K  O P  B   :     *+� �    C        D        E F      	 
  N    	  G     H   I     J  >[ s K  Q P  B   :     *+� �    C        D        E F       
  N      G     H   I     J  >[ s K  R S  B   :     *+� �    C        D        E F         N      G     H   I     J  >[ s K     B  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� :,� :� � � � � �*� #:,� #:� � � � � �*� &:	,� &:
	� 
� � 	
� � ��    C        D   p    � E F     � T U   � V F  $ � W U  * � X U  G k Y U  M e Z U  l F [ U  r @ \ U  � ! ] U 	 �  ^ U 
 _   6 �  �   �   	�   	�   	 N    T  G     H   I     `   J  >[ s K     B   9     +� �    C        D        E F      V U  N    V  G     H   I     J  >[ s K  , -  B  �     p;<=*� N;h-� +� -� *`=*� :;h� +� � *`=*� #:;h� +� � *`=*� &:;h� +� � *`=�    C        D   H    p E F    m a b   k c b  
 f d U  # M e U  > 2 f U  Y  g U  _   � �     �     �      �      �       �       �        �         G     H   I     `   J  >[ s K  h "  B   C     *� *� *� #*� &� .� 4  �    C        D        E F   G     H   I     `   J  >[ s K  : ;  B   /     *� 8�    C        D        E F   G     H   I     J  >[ s K  : i  B   l     *� 8*+� *,� *-� *� �    C        D   4     E F            	 
      
        N      	      G     H   I     J  >[ s K  j    k <     l  ms n I     o   p   q   r     s u     x  v ~     s   	 � � � 