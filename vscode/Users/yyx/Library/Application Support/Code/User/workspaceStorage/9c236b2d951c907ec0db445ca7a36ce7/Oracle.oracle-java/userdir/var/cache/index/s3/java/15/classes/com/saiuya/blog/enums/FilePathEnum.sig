����   A �  "com/saiuya/blog/enums/FilePathEnum	     AVATAR $Lcom/saiuya/blog/enums/FilePathEnum;	   	  ARTICLE	     CONFIG	     TALK	     PHOTO	     CAROUSEL	     $VALUES %[Lcom/saiuya/blog/enums/FilePathEnum;
      clone ()Ljava/lang/Object;
   ! " # $ java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;	  & ' ( path Ljava/lang/String;	  * + ( filePath	  - . ( description
   0 1 2 <init> (Ljava/lang/String;I)V  5 avatar/ 7 /avatar 9 头像路径
  ; 1 < L(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 	 ? article/ A /article C 文章图片路径  F config/ H /config J 配置图片路径  M talk/ O /talk Q 说说图片路径  T photo/ V /photo X 相册路径  [ 	carousel/ ] 	/carousel _ 轮播图路径
  a b c $values '()[Lcom/saiuya/blog/enums/FilePathEnum; values Code LineNumberTable 8(Ljava/lang/String;)Lcom/saiuya/blog/enums/FilePathEnum; LocalVariableTable name MethodParameters getPath ()Ljava/lang/String; this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; value all getFilePath getDescription 
$enum$name $enum$ordinal 	Signature 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V <clinit> ()V 6Ljava/lang/Enum<Lcom/saiuya/blog/enums/FilePathEnum;>; 
SourceFile FilePathEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1      
@    @ 	   @    @    @    @      ' (    + (    . (        	 d c  e   "      
� � � �    f        	 # g  e   4     
*� � �    f        h       
 i (   j    i�   k l  e   /     *� %�    f       1 h        m    n     o   p     q  r[ s s  t l  e   /     *� )�    f       6 h        m    n     o   p     q  r[ s s  u l  e   /     *� ,�    f       ; h        m    n     o   p     q  r[ s s  1 <  e   `     *+� /*-� %*� )*� ,�    f        h   *     m       ' (     + (     . (  j    v  w  '  +  .  x    y n     o   p     q  r[ s s
 b c  e   B      *� Y� SY� SY� 
SY� SY� SY� S�    f         z {  e   �      y� Y3468� :� � Y=>@B� :� � YDEGI� :� 
� YKLNP� :� � YRSUW� :� � YYZ\^� :� � `� �    f          &  9 ! L & _ + r   x    | }    ~ p   
     �  