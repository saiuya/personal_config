����   7 *
      java/lang/Object <init> ()V  +com/ican/model/vo/response/TalkBackInfoResp id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 说说id talkContent Ljava/lang/String; 说说内容 images -Lcom/fasterxml/jackson/annotation/JsonIgnore; 图片 imgList Ljava/util/List; 	Signature $Ljava/util/List<Ljava/lang/String;>; 图片列表 isTop 是否置顶 (0否 1是) status 说说状态 (1公开 2私密) Code LineNumberTable LocalVariableTable this -Lcom/ican/model/vo/response/TalkBackInfoResp; 
SourceFile TalkBackInfoResp.java !Lio/swagger/annotations/ApiModel; description 说说信息Response #org.netbeans.SourceLevelAnnotations Llombok/Data; !       	 
         s             s                s                  s    
         s    
         s          /     *� �                     ! "    #    $      %  &s ' (     )  