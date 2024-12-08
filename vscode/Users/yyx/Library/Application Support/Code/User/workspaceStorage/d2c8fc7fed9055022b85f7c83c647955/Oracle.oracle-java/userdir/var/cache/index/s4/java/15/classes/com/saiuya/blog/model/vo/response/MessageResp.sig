����   A v
      java/lang/Object <init> ()V	  	 
   -com/saiuya/blog/model/vo/response/MessageResp id Ljava/lang/Integer;	     nickname Ljava/lang/String;	     avatar	     messageContent
     canEqual (Ljava/lang/Object;)Z
     getId ()Ljava/lang/Integer;
    !  equals
  # $ % getNickname ()Ljava/lang/String;
  ' ( % 	getAvatar
  * + % getMessageContent
  - . / hashCode ()I   1 2 3 makeConcatWithConstants ](Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 留言id 昵称 头像 留言内容 Code LineNumberTable LocalVariableTable this /Lcom/saiuya/blog/model/vo/response/MessageResp; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setNickname (Ljava/lang/String;)V 	setAvatar setMessageContent o Ljava/lang/Object; other this$id other$id this$nickname other$nickname this$avatar other$avatar this$messageContent other$messageContent StackMapTable Ljava/lang/Override; PRIME I result $id 	$nickname $avatar $messageContent toString 
SourceFile MessageResp.java !Lio/swagger/annotations/ApiModel; description 留言Response Llombok/Data; BootstrapMethods i 9MessageResp(id=, nickname=, avatar=, messageContent=) k
 l m n 2 o $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses r %java/lang/invoke/MethodHandles$Lookup t java/lang/invoke/MethodHandles Lookup !          4     5  6s 7     4     5  6s 8     4     5  6s 9     4     5  6s :      ;   /     *� �    <        =        > ?   @     A   B     C  6[ s D     ;   /     *� �    <        =        > ?   @     A   B     C  6[ s D  $ %  ;   /     *� �    <        =        > ?   @     A   B     C  6[ s D  ( %  ;   /     *� �    <         =        > ?   @     A   B     C  6[ s D  + %  ;   /     *� �    <       & =        > ?   @     A   B     C  6[ s D  E F  ;   :     *+� �    <        =        > ?         G      @     A   B     C  6[ s D  H I  ;   :     *+� �    <        =        > ?         G      @     A   B     C  6[ s D  J I  ;   :     *+� �    <        =        > ?         G      @     A   B     C  6[ s D  K I  ;   :     *+� �    <        =        > ?         G      @     A   B     C  6[ s D  !   ;  |     �+*� �+� � �+� M,*� � �*� N,� :-� � � -� � �*� ":,� ":� � � � � �*� &:,� &:� � � � � �*� ):	,� ):
	� 
� � 	
� � ��    <        =   p    � > ?     � L M   � N ?  $ � O M  * � P M  G k Q M  M e R M  l F S M  r @ T M  � ! U M 	 �  V M 
 W   6 �  �   �   	�   	�   	 G    L  @     A   B     X   C  6[ s D     ;   9     +� �    <        =        > ?      N M  G    N  @     A   B     C  6[ s D  . /  ;  �     p;<=*� N;h-� +� -� ,`=*� ":;h� +� � ,`=*� &:;h� +� � ,`=*� ):;h� +� � ,`=�    <        =   H    p > ?    m Y Z   k [ Z  
 f \ M  # M ] M  > 2 ^ M  Y  _ M  W   � �     �     �      �      �       �       �        �         @     A   B     X   C  6[ s D  ` %  ;   @     *� *� "*� &*� )� 0  �    <        =        > ?   @     A   B     X   C  6[ s D  a    b 4     c  ds e B     f   g     j  h p   
  q s u 