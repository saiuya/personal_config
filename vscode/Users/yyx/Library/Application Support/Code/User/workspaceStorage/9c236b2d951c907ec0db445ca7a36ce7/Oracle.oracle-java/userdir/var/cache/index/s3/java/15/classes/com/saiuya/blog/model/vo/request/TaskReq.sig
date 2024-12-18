����   A �	      (com/saiuya/blog/model/vo/request/TaskReq id Ljava/lang/Integer;	   	 
 taskName Ljava/lang/String;	    
 	taskGroup	    
 invokeTarget	    
 cronExpression	     misfirePolicy	     
concurrent	     status	    
 remark
  ! " # canEqual (Ljava/lang/Object;)Z
  % & ' getId ()Ljava/lang/Integer;
 ) * + , # java/lang/Object equals
  . / ' getMisfirePolicy
  1 2 ' getConcurrent
  4 5 ' 	getStatus
  7 8 9 getTaskName ()Ljava/lang/String;
  ; < 9 getTaskGroup
  > ? 9 getInvokeTarget
  A B 9 getCronExpression
  D E 9 	getRemark
 ) G H I hashCode ()I   K L M makeConcatWithConstants �(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
 ) O P Q <init> ()V RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 任务id )Ljakarta/validation/constraints/NotBlank; message 任务名称不能为空 任务名称 required    RuntimeVisibleTypeAnnotations 任务组名不能为空 任务组名 调用目标不能为空 调用目标 cron执行表达式 D计划执行错误策略 (1立即执行 2执行一次 3放弃执行) 是否并发执行 (0否 1是) 任务状态 (0运行 暂停) 任务备注信息 Code LineNumberTable LocalVariableTable this *Lcom/saiuya/blog/model/vo/request/TaskReq; RuntimeInvisibleAnnotations Llombok/Generated; #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all setId (Ljava/lang/Integer;)V MethodParameters setTaskName (Ljava/lang/String;)V setTaskGroup setInvokeTarget setCronExpression setMisfirePolicy setConcurrent 	setStatus 	setRemark o Ljava/lang/Object; other this$id other$id this$misfirePolicy other$misfirePolicy this$concurrent other$concurrent this$status other$status this$taskName other$taskName this$taskGroup other$taskGroup this$invokeTarget other$invokeTarget this$cronExpression other$cronExpression this$remark other$remark StackMapTable Ljava/lang/Override; PRIME I result $id $misfirePolicy $concurrent $status 	$taskName 
$taskGroup $invokeTarget $cronExpression $remark toString �(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V 
SourceFile TaskReq.java !Lio/swagger/annotations/ApiModel; description 定时任务Request Llombok/Data; Llombok/NoArgsConstructor; Llombok/AllArgsConstructor; BootstrapMethods � {TaskReq(id=, taskName=, taskGroup=, invokeTarget=, cronExpression=, misfirePolicy=, concurrent=, status=, remark=) �
 � � � L � $java/lang/invoke/StringConcatFactory �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite; InnerClasses � %java/lang/invoke/MethodHandles$Lookup � java/lang/invoke/MethodHandles Lookup !  )   	     R     S  Ts U  	 
  R     V  Ws X S  Ts Y ZZ [ \      V  Ws X   
  R     V  Ws ] S  Ts ^ ZZ [ \      V  Ws ]   
  R     V  Ws _ S  Ts ` ZZ [ \      V  Ws _   
  R     S  Ts a     R     S  Ts b     R     S  Ts c     R     S  Ts d   
  R     S  Ts e   & '  f   /     *� �    g        h        i j   k     l   m     n  T[ s o  8 9  f   /     *� �    g       ! h        i j   k     l   m     n  T[ s o  < 9  f   /     *� �    g       ( h        i j   k     l   m     n  T[ s o  ? 9  f   /     *� �    g       / h        i j   k     l   m     n  T[ s o  B 9  f   /     *� �    g       5 h        i j   k     l   m     n  T[ s o  / '  f   /     *� �    g       ; h        i j   k     l   m     n  T[ s o  2 '  f   /     *� �    g       A h        i j   k     l   m     n  T[ s o  5 '  f   /     *� �    g       G h        i j   k     l   m     n  T[ s o  E 9  f   /     *� �    g       M h        i j   k     l   m     n  T[ s o  p q  f   :     *+� �    g        h        i j         r      k     l   m     n  T[ s o  s t  f   :     *+� �    g        h        i j      	 
  r    	  k     l   m     n  T[ s o  u t  f   :     *+� �    g        h        i j       
  r      k     l   m     n  T[ s o  v t  f   :     *+� �    g        h        i j       
  r      k     l   m     n  T[ s o  w t  f   :     *+� �    g        h        i j       
  r      k     l   m     n  T[ s o  x q  f   :     *+� �    g        h        i j         r      k     l   m     n  T[ s o  y q  f   :     *+� �    g        h        i j         r      k     l   m     n  T[ s o  z q  f   :     *+� �    g        h        i j         r      k     l   m     n  T[ s o  { t  f   :     *+� �    g        h        i j       
  r      k     l   m     n  T[ s o  , #  f  �    k+*� �+� � �+� M,*�  � �*� $N,� $:-� � � -� (� �*� -:,� -:� � � � (� �*� 0:,� 0:� � � � (� �*� 3:	,� 3:
	� 
� � 	
� (� �*� 6:,� 6:� � � � (� �*� ::,� ::� � � � (� �*� =:,� =:� � � � (� �*� @:,� @:� � � � (� �*� C:,� C:� � � � (� ��    g        h   �   k i j    k | }  V ~ j  $G  }  *A � }  G$ � }  M � }  l � � }  r � � }  � � � } 	 � � � } 
 � � � }  � � � }  � � � }  � � � }   k � }  e � } % F � } + @ � } J ! � } P  � }  �   m �  �  ) )�  ) )	�  ) )	�  ) )	�  ) )	�  ) )	�  ) )	�  ) )	�  ) )	 r    |  k     l   m     �   n  T[ s o  " #  f   9     +� �    g        h        i j      ~ }  r    ~  k     l   m     n  T[ s o  H I  f  �     �;<=*� $N;h-� +� -� F`=*� -:;h� +� � F`=*� 0:;h� +� � F`=*� 3:;h� +� � F`=*� 6:;h� +� � F`=*� ::;h� +� � F`=*� =:	;h	� +� 	� F`=*� @:
;h
� +� 
� F`=*� C:;h� +� � F`=�    g        h   z    � i j    � � �   � � �  
 � � }  # � � }  > � � }  Y � � }  t � � }  � h � }  � M � } 	 � 2 � } 
 �  � }  �   �    ) �    ) �    ) ) �    ) ) �    ) ) ) �    ) ) ) �    ) ) ) ) �    ) ) ) ) �    ) ) ) ) ) �    ) ) ) ) ) �  	  ) ) ) ) ) ) �  	  ) ) ) ) ) ) �  
  ) ) ) ) ) ) ) �  
  ) ) ) ) ) ) ) �    ) ) ) ) ) ) ) ) �    ) ) ) ) ) ) ) ) �    ) ) ) ) ) ) ) ) ) �    ) ) ) ) ) ) ) ) )  k     l   m     �   n  T[ s o  � 9  f   T 	    **� $*� 6*� :*� =*� @*� -*� 0*� 3*� C� J  �    g        h       * i j   k     l   m     �   n  T[ s o  P Q  f   /     *� N�    g        h        i j   k     l   m     n  T[ s o  P �  f   �  
   8*� N*+� *,� *-� *� *� *� *� *� *	� �    g        h   f 
   8 i j     8      8 	 
    8  
    8  
    8  
    8      8      8      8  
 	 r   %	   	                k     l   m     n  T[ s o  �    � R     �  �s � m     �   �   �   �     �  � �   
  � � � 