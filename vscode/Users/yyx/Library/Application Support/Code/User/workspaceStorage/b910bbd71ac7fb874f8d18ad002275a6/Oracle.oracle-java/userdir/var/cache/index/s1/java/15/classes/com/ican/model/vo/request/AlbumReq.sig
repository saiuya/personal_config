����   7 +
      java/lang/Object <init> ()V  "com/ican/model/vo/request/AlbumReq id Ljava/lang/Integer; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 相册id 	albumName Ljava/lang/String; 'Ljavax/validation/constraints/NotBlank; message 相册名不能为空 	相册名 required    RuntimeVisibleTypeAnnotations 	albumDesc 相册描述 
albumCover 相册封面不能为空 相册封面 status 状态 (1公开 2私密) Code LineNumberTable LocalVariableTable this $Lcom/ican/model/vo/request/AlbumReq; 
SourceFile AlbumReq.java !Lio/swagger/annotations/ApiModel; description 相册Request #org.netbeans.SourceLevelAnnotations Llombok/Data; !       	 
         s             s    s  Z          s             s             s    s  Z          s    
         s          /     *� �             !        " #    $    %      &  's ( )     *  