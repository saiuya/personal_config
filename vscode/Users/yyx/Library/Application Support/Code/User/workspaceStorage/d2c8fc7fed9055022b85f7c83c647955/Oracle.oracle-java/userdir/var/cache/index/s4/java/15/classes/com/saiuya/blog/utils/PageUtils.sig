����   A T
      java/lang/Object <init> ()V	  	 
   com/saiuya/blog/utils/PageUtils PAGE_HOLDER Ljava/lang/ThreadLocal;
      java/lang/ThreadLocal set (Ljava/lang/Object;)V
     get ()Ljava/lang/Object;  :com/baomidou/mybatisplus/extension/plugins/pagination/Page
      java/util/Objects isNull (Ljava/lang/Object;)Z
  
  ! " # setCurrentPage ?(Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page;)V
  % & ' getPage >()Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page;
  ) * + 
getCurrent ()J
 - . / 0 1 java/lang/Long valueOf (J)Ljava/lang/Long;
  3 4 + getSize
  6 * 7 ()Ljava/lang/Long;
 - 9 : + 	longValue
  < 4 7
  > ?  remove
   	Signature XLjava/lang/ThreadLocal<Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page<*>;>; Code LineNumberTable LocalVariableTable this !Lcom/saiuya/blog/utils/PageUtils; page <Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page; LocalVariableTypeTable ?Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page<*>; MethodParameters B(Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page<*>;)V StackMapTable A()Lcom/baomidou/mybatisplus/extension/plugins/pagination/Page<*>; getLimit <clinit> 
SourceFile PageUtils.java !          A    B      C   /     *� �    D        E        F G   	 " #  C   H     � *� �    D   
       E        H I   J        H K   L    H   A    M 	 & '  C   {     %� � � K*� � � Y� �  � � � �    D        
      E     
  H I   J     
  H K   N    �   A    O 	 * 7  C   "      
� $� (� ,�    D        	 4 7  C   "      
� $� 2� ,�    D       ! 	 P 7  C   +      � 5� 8
e� ;� 8i� ,�    D       % 	 ?   C   #      � � =�    D   
    )  *  Q   C   #      � Y� @� �    D         R    S