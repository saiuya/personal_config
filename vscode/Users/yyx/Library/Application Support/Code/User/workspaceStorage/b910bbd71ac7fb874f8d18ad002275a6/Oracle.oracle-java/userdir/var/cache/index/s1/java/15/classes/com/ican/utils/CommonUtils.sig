����   7 =
      java/lang/Object <init> ()V  java/util/ArrayList
    java/util/List 
    iterator ()Ljava/util/Iterator;      java/util/Iterator hasNext ()Z     next ()Ljava/lang/Object;
      java/lang/Class cast &(Ljava/lang/Object;)Ljava/lang/Object; 
 ! " # add (Ljava/lang/Object;)Z % com/ican/utils/CommonUtils Code LineNumberTable LocalVariableTable this Lcom/ican/utils/CommonUtils; castList 5(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List; o Ljava/lang/Object; obj clazz Ljava/lang/Class; result Ljava/util/List; LocalVariableTypeTable Ljava/lang/Class<TT;>; Ljava/util/List<TT;>; StackMapTable MethodParameters 	Signature U<T:Ljava/lang/Object;>(Ljava/lang/Object;Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>; 
SourceFile CommonUtils.java ! $           &   /     *� �    '        (        ) *   	 + ,  &   �     >� Y� 	M*� 
� 0*� 
�  N-�  � -�  :,+� �   W���,�,�    '            *  7  :  <  (   *  *  - .    > / .     > 0 1   6 2 3  4       > 0 5   6 2 6  7    �  
 �   8   	 /   0   9    :  ;    <