����   7 .
      java/lang/Object <init> ()V  )com/ican/model/vo/response/MenuOptionResp value Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; 菜单id parentId -Lcom/fasterxml/jackson/annotation/JsonIgnore; 父菜单id label Ljava/lang/String; 菜单名称 children Ljava/util/List; 	Signature =Ljava/util/List<Lcom/ican/model/vo/response/MenuOptionResp;>; .Lcom/fasterxml/jackson/annotation/JsonInclude; 6Lcom/fasterxml/jackson/annotation/JsonInclude$Include; 	NON_EMPTY 子菜单树 Code LineNumberTable LocalVariableTable this +Lcom/ican/model/vo/response/MenuOptionResp; 
SourceFile MenuOptionResp.java !Lio/swagger/annotations/ApiModel; description 菜单选项树Response #org.netbeans.SourceLevelAnnotations Llombok/Data; InnerClasses * 4com/fasterxml/jackson/annotation/JsonInclude$Include , ,com/fasterxml/jackson/annotation/JsonInclude Include !       	 
         	s    
            	s             	s                  	e     	s          /     *� �                          !    "      #  $s % &     '   (   
  ) + -@