����   A �	      2com/saiuya/blog/model/dto/BiliUploadDTO$UploadData imageUrl Ljava/lang/String;	   	 
 
imageWidth Ljava/lang/Integer;	    
 imageHeight	     imgSize Ljava/lang/Double;
     canEqual (Ljava/lang/Object;)Z
     getImageWidth ()Ljava/lang/Integer;
      java/lang/Object equals
    !  getImageHeight
  # $ % 
getImgSize ()Ljava/lang/Double;
  ' ( ) getImageUrl ()Ljava/lang/String;
  + , - hashCode ()I   / 0 1 makeConcatWithConstants ^(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;)Ljava/lang/String;
  3 4 5 <init> ()V RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 图片地址 图片宽度 图片高度 图片大小 Code LineNumberTable LocalVariableTable this 4Lcom/saiuya/blog/model/dto/BiliUploadDTO$UploadData; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setImageUrl (Ljava/lang/String;)V MethodParameters setImageWidth (Ljava/lang/Integer;)V setImageHeight 
setImgSize (Ljava/lang/Double;)V o Ljava/lang/Object; other this$imageWidth other$imageWidth this$imageHeight other$imageHeight this$imgSize other$imgSize this$imageUrl other$imageUrl StackMapTable Ljava/lang/Override; PRIME I result $imageWidth $imageHeight $imgSize 	$imageUrl toString M(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;)V 
SourceFile BiliUploadDTO.java 6Lcom/fasterxml/jackson/databind/annotation/JsonNaming; KLcom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy; !Lio/swagger/annotations/ApiModel; description 返回数据 Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; NestHost q 'com/saiuya/blog/model/dto/BiliUploadDTO BootstrapMethods t LBiliUploadDTO.UploadData(imageUrl=, imageWidth=, imageHeight=, imgSize=) v
 w x y 0 z $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses 
UploadData ~ Icom/fasterxml/jackson/databind/PropertyNamingStrategies$SnakeCaseStrategy � 7com/fasterxml/jackson/databind/PropertyNamingStrategies SnakeCaseStrategy � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          6     7  8s 9  	 
  6     7  8s :   
  6     7  8s ;     6     7  8s <   ( )  =   /     *� �    >       9 ?        @ A   B     C   D     E  8[ s F     =   /     *� �    >       ? ?        @ A   B     C   D     E  8[ s F  !   =   /     *� �    >       E ?        @ A   B     C   D     E  8[ s F  $ %  =   /     *� �    >       K ?        @ A   B     C   D     E  8[ s F  G H  =   :     *+� �    >       / ?        @ A         I      B     C   D     E  8[ s F  J K  =   :     *+� �    >       / ?        @ A      	 
  I    	  B     C   D     E  8[ s F  L K  =   :     *+� �    >       / ?        @ A       
  I      B     C   D     E  8[ s F  M N  =   :     *+� �    >       / ?        @ A         I      B     C   D     E  8[ s F     =  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� :,� :� � � � � �*� ":,� ":� � � � � �*� &:	,� &:
	� 
� � 	
� � ��    >       / ?   p    � @ A     � O P   � Q A  $ � R P  * � S P  G k T P  M e U P  l F V P  r @ W P  � ! X P 	 �  Y P 
 Z   6 �  �   �   	�   	�   	 I    O  B     C   D     [   E  8[ s F     =   9     +� �    >       / ?        @ A      Q P  I    Q  B     C   D     E  8[ s F  , -  =  �     p;<=*� N;h-� +� -� *`=*� :;h� +� � *`=*� ":;h� +� � *`=*� &:;h� +� � *`=�    >       / ?   H    p @ A    m \ ]   k ^ ]  
 f _ P  # M ` P  > 2 a P  Y  b P  Z   � �     �     �      �      �       �       �        �         B     C   D     [   E  8[ s F  c )  =   @     *� &*� *� *� "� .  �    >       / ?        @ A   B     C   D     [   E  8[ s F  4 5  =   /     *� 2�    >       0 ?        @ A   B     C   D     E  8[ s F  4 d  =   l     *� 2*+� *,� *-� *� �    >       1 ?   4     @ A            	 
      
        I      	      B     C   D     E  8[ s F  e    f 6     g  8c h i  js k D     l   m   n   o    p r     u  s {      p | 	 }  � 	 � � � 