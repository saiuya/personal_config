����   A o  $com/saiuya/blog/enums/UploadModeEnum	     LOCAL &Lcom/saiuya/blog/enums/UploadModeEnum;	   	  OSS	     COS	     QINIU	     $VALUES '[Lcom/saiuya/blog/enums/UploadModeEnum;
      clone ()Ljava/lang/Object;
      java/lang/Enum valueOf 5(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    ! " values )()[Lcom/saiuya/blog/enums/UploadModeEnum;
  $ % & getMode ()Ljava/lang/String;
 ( ) * + , java/lang/String equals (Ljava/lang/Object;)Z
  . / & getStrategy	  1 2 3 mode Ljava/lang/String;	  5 6 3 strategy
  8 9 : <init> (Ljava/lang/String;I)V  = local ? localUploadStrategyImpl
  A 9 B :(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V 	 E oss G ossUploadStrategyImpl  J cos L cosUploadStrategyImpl  O qiniu Q qiniuUploadStrategyImpl
  S T " $values Code LineNumberTable :(Ljava/lang/String;)Lcom/saiuya/blog/enums/UploadModeEnum; LocalVariableTable name MethodParameters &(Ljava/lang/String;)Ljava/lang/String; value StackMapTable this RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all 
$enum$name $enum$ordinal 	Signature '(Ljava/lang/String;Ljava/lang/String;)V <clinit> ()V 8Ljava/lang/Enum<Lcom/saiuya/blog/enums/UploadModeEnum;>; 
SourceFile UploadModeEnum.java Llombok/Getter; Llombok/AllArgsConstructor;@1     @    @ 	   @    @      2 3    6 3        	 ! "  U   "      
� � � �    V        	  W  U   4     
*� � �    V        X       
 Y 3   Z    Y�  	 / [  U   �     -� L+�=>�  +2:� #*� '� 	� -������    V       4  5  6 % 4 + 9 X       \     - 2 3   ]    � 	 �  Z    2    % &  U   /     *� 0�    V       & X        ^    _     `   a     b  \[ s c  / &  U   /     *� 4�    V       + X        ^    _     `   a     b  \[ s c  9 B  U   P     *+� 7*-� 0*� 4�    V        X         ^       2 3     6 3  Z    d  e  2  6  f    g _     `   a     b  \[ s c
 T "  U   5      � Y� SY� SY� 
SY� S�    V         h i  U   s      K� Y;<>� @� � YCDF� @� � YHIK� @� 
� YMNP� @� � R� �    V          "  3 ! D   f    j k    l a   
  m   n  