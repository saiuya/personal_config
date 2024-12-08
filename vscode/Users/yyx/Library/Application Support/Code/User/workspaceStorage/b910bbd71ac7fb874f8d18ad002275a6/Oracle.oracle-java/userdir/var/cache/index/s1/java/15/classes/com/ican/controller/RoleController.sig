����   7 w
      java/lang/Object <init> ()V	  	 
   "com/ican/controller/RoleController roleService Lcom/ican/service/RoleService;
      com/ican/service/RoleService 
listRoleVO C(Lcom/ican/model/vo/query/RoleQuery;)Lcom/ican/model/vo/PageResult;
      com/ican/model/vo/Result success .(Ljava/lang/Object;)Lcom/ican/model/vo/Result;
     addRole &(Lcom/ican/model/vo/request/RoleReq;)V
     ()Lcom/ican/model/vo/Result;
  ! " # 
deleteRole (Ljava/util/List;)V
  % &  
updateRole
  ( ) * updateRoleStatus ,(Lcom/ican/model/vo/request/RoleStatusReq;)V
  , - . listRoleMenuTree $(Ljava/lang/String;)Ljava/util/List; RuntimeVisibleAnnotations 8Lorg/springframework/beans/factory/annotation/Autowired; Code LineNumberTable LocalVariableTable this $Lcom/ican/controller/RoleController; ?(Lcom/ican/model/vo/query/RoleQuery;)Lcom/ican/model/vo/Result; 	roleQuery #Lcom/ican/model/vo/query/RoleQuery; MethodParameters 	Signature �(Lcom/ican/model/vo/query/RoleQuery;)Lcom/ican/model/vo/Result<Lcom/ican/model/vo/PageResult<Lcom/ican/model/vo/response/RoleResp;>;>; %Lio/swagger/annotations/ApiOperation; value 查看后台角色列表 /Lcn/dev33/satoken/annotation/SaCheckPermission; system:role:list 4Lorg/springframework/web/bind/annotation/GetMapping; /admin/role/list ?(Lcom/ican/model/vo/request/RoleReq;)Lcom/ican/model/vo/Result; role #Lcom/ican/model/vo/request/RoleReq; B(Lcom/ican/model/vo/request/RoleReq;)Lcom/ican/model/vo/Result<*>; Lcom/ican/annotation/OptLogger; 添加 添加角色 system:role:add 5Lorg/springframework/web/bind/annotation/PostMapping; /admin/role/add "RuntimeVisibleParameterAnnotations 5Lorg/springframework/validation/annotation/Validated; 5Lorg/springframework/web/bind/annotation/RequestBody; ,(Ljava/util/List;)Lcom/ican/model/vo/Result; 
roleIdList Ljava/util/List; LocalVariableTypeTable $Ljava/util/List<Ljava/lang/String;>; C(Ljava/util/List<Ljava/lang/String;>;)Lcom/ican/model/vo/Result<*>; 删除 删除角色 system:role:delete 7Lorg/springframework/web/bind/annotation/DeleteMapping; /admin/role/delete 修改 修改角色 system:role:update 4Lorg/springframework/web/bind/annotation/PutMapping; /admin/role/update E(Lcom/ican/model/vo/request/RoleStatusReq;)Lcom/ican/model/vo/Result; 
roleStatus )Lcom/ican/model/vo/request/RoleStatusReq; H(Lcom/ican/model/vo/request/RoleStatusReq;)Lcom/ican/model/vo/Result<*>; 修改角色状态 system:role:status mode $Lcn/dev33/satoken/annotation/SaMode; OR /admin/role/changeStatus .(Ljava/lang/String;)Lcom/ican/model/vo/Result; roleId Ljava/lang/String; U(Ljava/lang/String;)Lcom/ican/model/vo/Result<Ljava/util/List<Ljava/lang/Integer;>;>; 查看角色的菜单权限 /admin/role/menu/{roleId} 6Lorg/springframework/web/bind/annotation/PathVariable; 
SourceFile RoleController.java Lio/swagger/annotations/Api; tags 角色模块 8Lorg/springframework/web/bind/annotation/RestController; !          /     0        1   /     *� �    2        3        4 5     6  1   @     *� +� � �    2       . 3        4 5      7 8  9    7   :    ; /   #  <  =s > ?  =[ s @ A  =[ s B   C  1   D     *� +� � �    2   
    <  = 3        4 5      D E  9    D   :    F /   ,  G  =s H <  =s I ?  =[ s J K  =[ s L M     N   O    " P  1   V     *� +�  � �    2   
    K  L 3        4 5      Q R  S        Q T  9    Q   :    U /   ,  G  =s V <  =s W ?  =[ s X Y  =[ s Z M     O    & C  1   D     *� +� $� �    2   
    Z  [ 3        4 5      D E  9    D   :    F /   ,  G  =s [ <  =s \ ?  =[ s ] ^  =[ s _ M     N   O    ) `  1   D     *� +� '� �    2   
    i  j 3        4 5      a b  9    a   :    c /   6  G  =s [ <  =s d ?  =[ s ]s e fe g h ^  =[ s i M     N   O    - j  1   @     *� +� +� �    2       w 3        4 5      k l  9    k   :    m /   #  <  =s n ?  =[ s @ A  =[ s o M     p  =s k  q    r /     s  t[ s u v  