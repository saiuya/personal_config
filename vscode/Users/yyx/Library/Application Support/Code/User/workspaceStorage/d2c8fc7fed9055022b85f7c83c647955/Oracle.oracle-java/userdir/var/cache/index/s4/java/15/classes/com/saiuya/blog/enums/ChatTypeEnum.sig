����   A r  "com/saiuya/blog/enums/ChatTypeEnum	     ONLINE_COUNT $Lcom/saiuya/blog/enums/ChatTypeEnum;	   	  HISTORY_RECORD	     SEND_MESSAGE	     RECALL_MESSAGE	     
HEART_BEAT	     $VALUES %[Lcom/saiuya/blog/enums/ChatTypeEnum;
      clone ()Ljava/lang/Object;
      ! java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
  # $ % values '()[Lcom/saiuya/blog/enums/ChatTypeEnum;
  ' ( ) getType ()Ljava/lang/Integer;
 + , - . / java/lang/Integer equals (Ljava/lang/Object;)Z	  1 2 3 type Ljava/lang/Integer;	  5 6 7 desc Ljava/lang/String;
  9 : ; <init> (Ljava/lang/String;I)V 
 + >   ? (I)Ljava/lang/Integer; A 在线人数
  C : D ;(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V 	 G 历史记录  J 发送消息  M 撤回消息  P 心跳消息
  R S % $values Code LineNumberTable 8(Ljava/lang/String;)Lcom/saiuya/blog/enums/ChatTypeEnum; LocalVariableTable name MethodParameters getChatType 9(Ljava/lang/Integer;)Lcom/saiuya/blog/enums/ChatTypeEnum; chatType StackMapTable this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all getDesc ()Ljava/lang/String; 
$enum$name $enum$ordinal 	Signature ((Ljava/lang/Integer;Ljava/lang/String;)V <clinit> ()V 6Ljava/lang/Enum<Lcom/saiuya/blog/enums/ChatTypeEnum;>; 
SourceFile ChatTypeEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @    @    @      2 3    6 7        	 $ %  T   "      
� � � �    U        	   V  T   4     
*� � �    U        W       
 X 7   Y    X�  	 Z [  T   �     *� "L+�=>� +2:� &*� *� ������    U       9  :  ; " 9 ( > W       \     * 2 3   ]    � 	 �  Y    2    ( )  T   /     *� 0�    U       + W        ^    _     `   a     b  c[ s d  e f  T   /     *� 4�    U       0 W        ^    _     `   a     b  c[ s d  : D  T   P     *+� 8*-� 0*� 4�    U        W         ^       2 3     6 7  Y    g  h  2  6  i    j _     `   a     b  c[ s d
 S %  T   ;      #� Y� SY� SY� 
SY� SY� S�    U         k l  T   �      f� Y<� =@� B� � YE� =F� B� � YH� =I� B� 
� YK� =L� B� � YN� =O� B� � Q� �    U          &  9 ! L & _   i    m n    o a   
  p   q  