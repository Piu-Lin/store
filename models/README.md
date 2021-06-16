# 数据库映射表明细

## 核心模块

`core.go` 建立与数据库的连接与保持。

## 管理模块

- manager.go 映射表示一个管理员账户
- role.go 映射表示一个管理角色
- access.go 映射表示一类权限所能拥有的管理方式
- roleAccess.go 映射表示了角色与权限的对应关系

## 商品模块

- goodsCate.go 映射表示了一个产品大类，例如手机、路由器
- goodsType.go 映射表示了一类产品所共有的名称
- goodsTypeAtrribute 映射表示一类产品的详细描述
- goods.go 映射表示具体商品

## 其他

- focus.go 映射表示之后首页轮播图所用的图片
- tools.go 一些其他小工具
