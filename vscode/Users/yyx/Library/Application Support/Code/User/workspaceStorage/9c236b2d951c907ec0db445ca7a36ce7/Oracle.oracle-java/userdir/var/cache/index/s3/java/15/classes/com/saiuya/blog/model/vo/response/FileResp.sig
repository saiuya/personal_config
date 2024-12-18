����   A �
      java/lang/Object <init> ()V	  	 
   *com/saiuya/blog/model/vo/response/FileResp id Ljava/lang/Integer;	     fileUrl Ljava/lang/String;	     fileName	     fileSize	     
extendName	     filePath	     isDir	  ! " # 
createTime Ljava/time/LocalDateTime;
  % & ' canEqual (Ljava/lang/Object;)Z
  ) * + getId ()Ljava/lang/Integer;
  - . ' equals
  0 1 + getFileSize
  3 4 + getIsDir
  6 7 8 
getFileUrl ()Ljava/lang/String;
  : ; 8 getFileName
  = > 8 getExtendName
  @ A 8 getFilePath
  C D E getCreateTime ()Ljava/time/LocalDateTime;
  G H I hashCode ()I
 K L M N O java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   Q R S makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 文件id 	文件url 	文件名 文件大小 文件类型 文件路径 是否为目录 (0否 1是) 创建时间 Code LineNumberTable LocalVariableTable this ,Lcom/saiuya/blog/model/vo/response/FileResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters 
setFileUrl (Ljava/lang/String;)V setFileName setFileSize setExtendName setFilePath setIsDir setCreateTime (Ljava/time/LocalDateTime;)V o Ljava/lang/Object; other this$id other$id this$fileSize other$fileSize 
this$isDir other$isDir this$fileUrl other$fileUrl this$fileName other$fileName this$extendName other$extendName this$filePath other$filePath this$createTime other$createTime StackMapTable Ljava/lang/Override; PRIME I result $id 	$fileSize $isDir $fileUrl 	$fileName $extendName 	$filePath $createTime toString 
SourceFile FileResp.java !Lio/swagger/annotations/ApiModel; description 文件后台Response Llombok/Data; BootstrapMethods � bFileResp(id=, fileUrl=, fileName=, fileSize=, extendName=, filePath=, isDir=, createTime=) �
 � � � R � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !          T     U  Vs W     T     U  Vs X     T     U  Vs Y     T     U  Vs Z     T     U  Vs [     T     U  Vs \     T     U  Vs ]  " #  T     U  Vs ^      _   /     *� �    `        a        b c   d     e   f     g  V[ s h  * +  _   /     *� �    `        a        b c   d     e   f     g  V[ s h  7 8  _   /     *� �    `        a        b c   d     e   f     g  V[ s h  ; 8  _   /     *� �    `       " a        b c   d     e   f     g  V[ s h  1 +  _   /     *� �    `       ( a        b c   d     e   f     g  V[ s h  > 8  _   /     *� �    `       . a        b c   d     e   f     g  V[ s h  A 8  _   /     *� �    `       4 a        b c   d     e   f     g  V[ s h  4 +  _   /     *� �    `       : a        b c   d     e   f     g  V[ s h  D E  _   /     *�  �    `       @ a        b c   d     e   f     g  V[ s h  i j  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  l m  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  n m  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  o j  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  p m  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  q m  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  r j  _   :     *+� �    `        a        b c         k      d     e   f     g  V[ s h  s t  _   :     *+�  �    `        a        b c      " #  k    "  d     e   f     g  V[ s h  . '  _  �    F+*� �+� � �+� M,*� $� �*� (N,� (:-� � � -� ,� �*� /:,� /:� � � � ,� �*� 2:,� 2:� � � � ,� �*� 5:	,� 5:
	� 
� � 	
� ,� �*� 9:,� 9:� � � � ,� �*� <:,� <:� � � � ,� �*� ?:,� ?:� � � � ,� �*� B:,� B:� � � � ,� ��    `        a   �   F b c    F u v  1 w c  $" x v  * y v  G � z v  M � { v  l � | v  r � } v  � � ~ v 	 � �  v 
 � � � v  � � � v  � k � v  � e � v   F � v  @ � v % ! � v +  � v  �   b �  �   �   	�   	�   	�   	�   	�   	�   	 k    u  d     e   f     �   g  V[ s h  & '  _   9     +� �    `        a        b c      w v  k    w  d     e   f     g  V[ s h  H I  _  "     �;<=*� (N;h-� +� -� F`=*� /:;h� +� � F`=*� 2:;h� +� � F`=*� 5:;h� +� � F`=*� 9:;h� +� � F`=*� <:;h� +� � F`=*� ?:	;h	� +� 	� F`=*� B:
;h
� +� 
� F`=�    `        a   p    � b c    � � �   � � �  
 � � v  # � � v  > � � v  Y � � v  t h � v  � M � v  � 2 � v 	 �  � v 
 �  � �     �     �      �      �       �       �        �        �         �         �  	        �  	        �  
         �  
         �            �             d     e   f     �   g  V[ s h  � 8  _   S     )*� (*� 5*� 9*� /*� <*� ?*� 2*� B� J� P  �    `        a       ) b c   d     e   f     �   g  V[ s h  �    � T     �  �s � f     �   �     �  � �   
  � � � 