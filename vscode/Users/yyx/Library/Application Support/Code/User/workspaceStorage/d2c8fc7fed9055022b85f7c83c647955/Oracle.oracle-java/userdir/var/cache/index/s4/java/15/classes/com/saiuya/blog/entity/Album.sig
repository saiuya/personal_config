����   A �	      com/saiuya/blog/entity/Album id Ljava/lang/Integer;	   	 
 	albumName Ljava/lang/String;	    
 
albumCover	    
 	albumDesc	     status	     
createTime Ljava/time/LocalDateTime;	     
updateTime
     canEqual (Ljava/lang/Object;)Z
    ! " getId ()Ljava/lang/Integer;
 $ % & '  java/lang/Object equals
  ) * " 	getStatus
  , - . getAlbumName ()Ljava/lang/String;
  0 1 . getAlbumCover
  3 4 . getAlbumDesc
  6 7 8 getCreateTime ()Ljava/time/LocalDateTime;
  : ; 8 getUpdateTime
 $ = > ? hashCode ()I
 A B C D E java/lang/String valueOf &(Ljava/lang/Object;)Ljava/lang/String;   G H I makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
 $ K L M <init> ()V RuntimeVisibleAnnotations -Lcom/baomidou/mybatisplus/annotation/TableId; type ,Lcom/baomidou/mybatisplus/annotation/IdType; AUTO 0Lcom/baomidou/mybatisplus/annotation/TableField; fill /Lcom/baomidou/mybatisplus/annotation/FieldFill; INSERT UPDATE Code LineNumberTable LocalVariableTable this Lcom/saiuya/blog/entity/Album; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all setId (Ljava/lang/Integer;)V MethodParameters setAlbumName (Ljava/lang/String;)V setAlbumCover setAlbumDesc 	setStatus setCreateTime (Ljava/time/LocalDateTime;)V setUpdateTime o Ljava/lang/Object; other this$id other$id this$status other$status this$albumName other$albumName this$albumCover other$albumCover this$albumDesc other$albumDesc this$createTime other$createTime this$updateTime other$updateTime StackMapTable Ljava/lang/Override; PRIME I result $id $status 
$albumName $albumCover 
$albumDesc $createTime $updateTime toString �(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V 
SourceFile 
Album.java Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; BootstrapMethods � YAlbum(id=, albumName=, albumCover=, albumDesc=, status=, createTime=, updateTime=) �
 � � � H � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !  $        N     O  Pe Q R  	 
     
     
            N     S  Te U V     N     S  Te U W   ! "  X   /     *� �    Y        Z        [ \   ]     ^   _     `  a[ s b  - .  X   /     *� �    Y         Z        [ \   ]     ^   _     `  a[ s b  1 .  X   /     *� �    Y       % Z        [ \   ]     ^   _     `  a[ s b  4 .  X   /     *� �    Y       * Z        [ \   ]     ^   _     `  a[ s b  * "  X   /     *� �    Y       / Z        [ \   ]     ^   _     `  a[ s b  7 8  X   /     *� �    Y       5 Z        [ \   ]     ^   _     `  a[ s b  ; 8  X   /     *� �    Y       ; Z        [ \   ]     ^   _     `  a[ s b  c d  X   :     *+� �    Y        Z        [ \         e      ]     ^   _     `  a[ s b  f g  X   :     *+� �    Y        Z        [ \      	 
  e    	  ]     ^   _     `  a[ s b  h g  X   :     *+� �    Y        Z        [ \       
  e      ]     ^   _     `  a[ s b  i g  X   :     *+� �    Y        Z        [ \       
  e      ]     ^   _     `  a[ s b  j d  X   :     *+� �    Y        Z        [ \         e      ]     ^   _     `  a[ s b  k l  X   :     *+� �    Y        Z        [ \         e      ]     ^   _     `  a[ s b  m l  X   :     *+� �    Y        Z        [ \         e      ]     ^   _     `  a[ s b  '   X  H    !+*� �+� � �+� M,*� � �*� N,� :-� � � -� #� �*� (:,� (:� � � � #� �*� +:,� +:� � � � #� �*� /:	,� /:
	� 
� � 	
� #� �*� 2:,� 2:� � � � #� �*� 5:,� 5:� � � � #� �*� 9:,� 9:� � � � #� ��    Y        Z   �   ! [ \    ! n o   p \  $ � q o  * � r o  G � s o  M � t o  l � u o  r � v o  � � w o 	 � � x o 
 � k y o  � e z o  � F { o  � @ | o   ! } o   ~ o     W �  �  $ $�  $ $	�  $ $	�  $ $	�  $ $	�  $ $	�  $ $	 e    n  ]     ^   _     �   `  a[ s b     X   9     +� �    Y        Z        [ \      p o  e    p  ]     ^   _     `  a[ s b  > ?  X  �  
   �;<=*� N;h-� +� -� <`=*� (:;h� +� � <`=*� +:;h� +� � <`=*� /:;h� +� � <`=*� 2:;h� +� � <`=*� 5:;h� +� � <`=*� 9:	;h	� +� 	� <`=�    Y        Z   f 
   � [ \    � � �   � � �  
 � � o  # � � o  > � � o  Y h � o  t M � o  � 2 � o  �  � o 	   g �    $ �    $ �    $ $ �    $ $ �    $ $ $ �    $ $ $ �    $ $ $ $ �    $ $ $ $ �    $ $ $ $ $ �    $ $ $ $ $ �  	  $ $ $ $ $ $ �  	  $ $ $ $ $ $ �  
  $ $ $ $ $ $ $ �  
  $ $ $ $ $ $ $  ]     ^   _     �   `  a[ s b  � .  X   R     (*� *� +*� /*� 2*� (*� 5� @*� 9� @� F  �    Y        Z       ( [ \   ]     ^   _     �   `  a[ s b  L M  X   /     *� J�    Y        Z        [ \   ]     ^   _     `  a[ s b  L �  X   �     ,*� J*+� *,� *-� *� *� *� *� �    Y        Z   R    , [ \     ,      , 	 
    ,  
    ,  
    ,      ,      ,    e      	            ]     ^   _     `  a[ s b  �    � _     �   �   �   �     �  � �   
  � � � 