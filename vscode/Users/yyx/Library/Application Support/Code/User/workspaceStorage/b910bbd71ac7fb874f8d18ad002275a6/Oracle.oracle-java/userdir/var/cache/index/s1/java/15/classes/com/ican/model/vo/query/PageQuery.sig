����   7 ;
      java/lang/Object <init> ()V	  	 
   !com/ican/model/vo/query/PageQuery current Ljava/lang/Integer;	      com/ican/constant/PageConstant DEFAULT_CURRENT
      java/lang/Integer intValue ()I
     getSize ()Ljava/lang/Integer;
     valueOf (I)Ljava/lang/Integer;	  ! "  size	  $ %  MY_SIZE RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 	当前页 required    条数 Code LineNumberTable LocalVariableTable this #Lcom/ican/model/vo/query/PageQuery; 
getCurrent StackMapTable 
SourceFile PageQuery.java !Lio/swagger/annotations/ApiModel; description 分页查询条件 #org.netbeans.SourceLevelAnnotations Llombok/Data; !          &     '  (s ) *Z +  "   &     '  (s , *Z +      -   /     *� �    .        /        0 1    2   -   d     /*� � � � d*� � h� *� � d*� � h� �    .        /       / 0 1   3    P     -   I     *�  � 	� #� *�  �    .       # /        0 1   3    C   4    5 &     6  7s 8 9     :  