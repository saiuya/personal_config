����   A f  $com/saiuya/blog/enums/StatusCodeEnum	     SUCCESS &Lcom/saiuya/blog/enums/StatusCodeEnum;	   	  VALID_ERROR	     UNAUTHORIZED	     SYSTEM_ERROR	     FAIL	     $VALUES '[Lcom/saiuya/blog/enums/StatusCodeEnum;
      clone ()Ljava/lang/Object;
      ! java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;	  # $ % code Ljava/lang/Integer;	  ' ( ) msg Ljava/lang/String;
  + , - <init> (Ljava/lang/String;I)V 
 0 1 2   3 java/lang/Integer (I)Ljava/lang/Integer; 5 操作成功
  7 , 8 ;(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V 	 ; 参数错误  > 	未登录  A 系统异常  D 操作失败
  F G H $values )()[Lcom/saiuya/blog/enums/StatusCodeEnum; values Code LineNumberTable :(Ljava/lang/String;)Lcom/saiuya/blog/enums/StatusCodeEnum; LocalVariableTable name MethodParameters getCode ()Ljava/lang/Integer; this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all getMsg ()Ljava/lang/String; 
$enum$name $enum$ordinal 	Signature ((Ljava/lang/Integer;Ljava/lang/String;)V <clinit> ()V 8Ljava/lang/Enum<Lcom/saiuya/blog/enums/StatusCodeEnum;>; 
SourceFile StatusCodeEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @    @    @      $ %    ( )        	 I H  J   "      
� � � �    K        	   L  J   4     
*� � �    K        M       
 N )   O    N�   P Q  J   /     *� "�    K       + M        R    S     T   U     V  W[ s X  Y Z  J   /     *� &�    K       0 M        R    S     T   U     V  W[ s X  , 8  J   P     *+� **-� "*� &�    K        M         R       $ %     ( )  O    [  \  $  (  ]    ^ S     T   U     V  W[ s X
 G H  J   ;      #� Y� SY� SY� 
SY� SY� S�    K         _ `  J   �      n� Y. ȸ /4� 6� � Y9�� /:� 6� � Y<�� /=� 6� 
� Y?� /@� 6� � YB�� /C� 6� � E� �    K          *  ? ! R & g   ]    a b    c U   
  d   e  