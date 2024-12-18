����   7 /
      java/lang/Object <init> ()V  !com/ican/model/vo/request/RoleReq id Ljava/lang/String; RuntimeVisibleAnnotations )Lio/swagger/annotations/ApiModelProperty; value 角色id roleName 'Ljavax/validation/constraints/NotBlank; message 角色名不能为空 	角色名 required    RuntimeVisibleTypeAnnotations roleDesc 角色描述 	isDisable Ljava/lang/Integer; &Ljavax/validation/constraints/NotNull; 角色状态不能为空 是否禁用 (0否 1是) 
menuIdList Ljava/util/List; 	Signature %Ljava/util/List<Ljava/lang/Integer;>; 菜单id集合 Code LineNumberTable LocalVariableTable this #Lcom/ican/model/vo/request/RoleReq; 
SourceFile RoleReq.java !Lio/swagger/annotations/ApiModel; description 角色Request #org.netbeans.SourceLevelAnnotations Llombok/Data; !       	 
         s    
         s    s  Z          s    
         s             s    s  Z          s           !        s "      #   /     *� �    $        %        & '    (    )      *  +s , -     .  