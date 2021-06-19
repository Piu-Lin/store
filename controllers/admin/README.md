# 项目的控制器

## 管理员用户管理相关

- manager.go 管理员用户控制
- access.go 权限控制
- role.go 角色控制

## 商品管理相关

- goodsCate.go 产品大类
- goodsType.go 产品类型
- goods.go 产品对象
- goodsTypeAttr.go 产品类型的描述信息

实现上述增删改查逻辑

## base.go 控制基本公共方法

- 公共跳转方法
- 图片上传方法

## main.go 管理后台公共方法

- 判断其角色与权限 展现不同的列表
- 异步修改 Status 即状态的公共方法
- 异步修改数量以及排序的公共方法

实现上述增删改查逻辑

## login.go 管理员用户登录

- 配置基于 captcha 的验证码
- 完成使用 Session 的登入与登出

## focus.go 首页轮播图的管理方法

实现轮播图的增删改查
