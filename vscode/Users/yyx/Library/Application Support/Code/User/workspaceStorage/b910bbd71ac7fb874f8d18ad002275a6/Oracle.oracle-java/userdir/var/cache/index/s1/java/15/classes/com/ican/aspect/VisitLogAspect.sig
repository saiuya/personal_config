����   7 (
      java/lang/Object <init> ()V  java/lang/RuntimeException 
 �Uncompilable code - シンボルを見つけられません
  シンボル:   メソッド setIpAddress(java.lang.String)
  場所: タイプcom.ican.entity.VisitLogの変数 visitLog
     (Ljava/lang/String;)V  com/ican/aspect/VisitLogAspect Code LineNumberTable LocalVariableTable this  Lcom/ican/aspect/VisitLogAspect; visitLogPointCut RuntimeVisibleAnnotations &Lorg/aspectj/lang/annotation/Pointcut; value ,@annotation(com.ican.annotation.VisitLogger) doAfterReturning 1(Lorg/aspectj/lang/JoinPoint;Ljava/lang/Object;)V 	joinPoint Lorg/aspectj/lang/JoinPoint; result Ljava/lang/Object; MethodParameters ,Lorg/aspectj/lang/annotation/AfterReturning; visitLogPointCut() 	returning 
SourceFile VisitLogAspect.java $Lorg/aspectj/lang/annotation/Aspect; *Lorg/springframework/stereotype/Component; !               /     *� �                               +      �           #                    s         H     
� Y	� �           .         
       
      
        	            !  s " #s   $    %    
  &   '  