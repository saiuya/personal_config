����   7 ,	      'com/ican/manager/factory/AsyncFactory$3 val$visitLog Lcom/ican/entity/VisitLog;
  	 
   java/util/TimerTask <init> ()V   com/ican/service/VisitLogService
      !cn/hutool/extra/spring/SpringUtil getBean %(Ljava/lang/Class;)Ljava/lang/Object;
     saveVisitLog (Lcom/ican/entity/VisitLog;)V Code LineNumberTable LocalVariableTable this )Lcom/ican/manager/factory/AsyncFactory$3; MethodParameters run #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; 
SourceFile AsyncFactory.java EnclosingMethod & %com/ican/manager/factory/AsyncFactory ( ) recordVisit 1(Lcom/ican/entity/VisitLog;)Ljava/util/TimerTask; NestHost InnerClasses                     4     
*+� *� �           :        
                 >     � � *� � �       
    =  >                   !    "    # $    % ' *    % +   
        