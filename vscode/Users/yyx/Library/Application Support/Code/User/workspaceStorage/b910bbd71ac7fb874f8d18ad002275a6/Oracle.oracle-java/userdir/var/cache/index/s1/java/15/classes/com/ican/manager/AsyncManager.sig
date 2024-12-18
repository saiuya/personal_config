����   7 =
      java/lang/Object <init> ()V  scheduledExecutorService
 
     !cn/hutool/extra/spring/SpringUtil getBean &(Ljava/lang/String;)Ljava/lang/Object;  -java/util/concurrent/ScheduledExecutorService	      com/ican/manager/AsyncManager executor /Ljava/util/concurrent/ScheduledExecutorService;	     INSTANCE Lcom/ican/manager/AsyncManager;       
	     ! " java/util/concurrent/TimeUnit MILLISECONDS Ljava/util/concurrent/TimeUnit;  $ % & schedule \(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
 ( ) * + , com/ican/utils/ThreadUtils shutdownAndAwaitTermination )(Ljava/util/concurrent/ExecutorService;)V
   Code LineNumberTable LocalVariableTable this getInstance !()Lcom/ican/manager/AsyncManager; execute (Ljava/util/TimerTask;)V task Ljava/util/TimerTask; MethodParameters shutdown <clinit> 
SourceFile AsyncManager.java !                     .   C     *� *� 	� � �    /         $   0        1    	 2 3  .         � �    /         4 5  .   J     *� + � � # W�    /   
    ,  - 0        1       6 7  8    6    9   .   6     *� � '�    /   
    3  4 0        1     :   .   #      � Y� -� �    /         ;    <