����   A P  &com/saiuya/blog/constant/RedisConstant
      java/lang/Object <init> ()V	 
     %com/saiuya/blog/quartz/task/TimedTask redisService &Lcom/saiuya/blog/service/RedisService;  unique_visitor
      $com/saiuya/blog/service/RedisService deleteObject '(Ljava/lang/String;)Ljava/lang/Boolean;	      java/lang/System out Ljava/io/PrintStream;  测试任务
   ! " # $ java/io/PrintStream println (Ljava/lang/String;)V & java/util/Date
 % 
 ) * + , - cn/hutool/core/date/DateUtil 	offsetDay 1(Ljava/util/Date;I)Lcn/hutool/core/date/DateTime;
 ) / 0 1 
beginOfDay 0(Ljava/util/Date;)Lcn/hutool/core/date/DateTime;	 
 3 4 5 visitLogMapper 'Lcom/saiuya/blog/mapper/VisitLogMapper; 7 8 9 : ; %com/saiuya/blog/mapper/VisitLogMapper deleteVisitLog !(Lcn/hutool/core/date/DateTime;)V RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this 'Lcom/saiuya/blog/quartz/task/TimedTask; clear test clearVistiLog endTime Lcn/hutool/core/date/DateTime; 
SourceFile TimedTask.java *Lorg/springframework/stereotype/Component; value 	timedTask #org.netbeans.SourceLevelAnnotations Ljava/lang/SuppressWarnings; all ! 
         <     =    4 5  <     =        >   /     *� �    ?        @        A B    C   >   9     *� 	� W�    ?   
      
 ! @        A B    D   >   7     	� � �    ?   
    '  ( @       	 A B    E   >   W     � %Y� '�� (� .L*� 2+� 6 �    ?       .  /  0 @        A B     F G   H    I <     J  Ks L M     N  K[ s O