package routers

import (
	"beegoxiaomi/controllers/admin"
	"beegoxiaomi/middleware"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/"+beego.AppConfig.String("adminPath"),
		//中间件:匹配路由前会执,可以用于权限验证
		//注意引入的包： github.com/astaxie/beego/context
		beego.NSBefore(middleware.AdminAuth),
		beego.NSRouter("/", &admin.MainController{}),
		beego.NSRouter("/welcome", &admin.MainController{}, "get:Welcome"),
		beego.NSRouter("/main/changeStatus", &admin.MainController{}, "get:ChangeStatus"),
		beego.NSRouter("/main/editNum", &admin.MainController{}, "get:EditNum"),
		beego.NSRouter("/login", &admin.LoginController{}),
		beego.NSRouter("/login/doLogin", &admin.LoginController{}, "post:DoLogin"),
		beego.NSRouter("/login/loginOut", &admin.LoginController{}, "get:LoginOut"),
		beego.NSRouter("/focus", &admin.FocusController{}),
		//角色管理
		beego.NSRouter("/role", &admin.RoleController{}),
		beego.NSRouter("/role/add", &admin.RoleController{}, `get:Add`),
		beego.NSRouter("/role/edit", &admin.RoleController{}, `get:Edit`),
		beego.NSRouter("/role/doAdd", &admin.RoleController{}, `post:DoAdd`),
		beego.NSRouter("/role/doEdit", &admin.RoleController{}, `post:DoEdit`),
		beego.NSRouter("/role/delete", &admin.RoleController{}, `get:Delete`),
		beego.NSRouter("/role/auth", &admin.RoleController{}, `get:Auth`),
		beego.NSRouter("/role/doAuth", &admin.RoleController{}, `post:DoAuth`),
		//管理员管理
		beego.NSRouter("/manager", &admin.AdminController{}),
		beego.NSRouter("/manager/add", &admin.AdminController{}, "get:Add"),
		beego.NSRouter("/manager/doAdd", &admin.AdminController{}, `post:DoAdd`),
		beego.NSRouter("/manager/edit", &admin.AdminController{}, "get:Edit"),
		beego.NSRouter("/manager/doEdit", &admin.AdminController{}, `post:DoEdit`),
		beego.NSRouter("/manager/delete", &admin.AdminController{}, `get:Delete`),
		//权限管理
		beego.NSRouter("/access", &admin.AccessController{}),
		beego.NSRouter("/access/add", &admin.AccessController{}, "get:Add"),
		beego.NSRouter("/access/doAdd", &admin.AccessController{}, `post:DoAdd`),
		beego.NSRouter("/access/edit", &admin.AccessController{}, "get:Edit"),
		beego.NSRouter("/access/doEdit", &admin.AccessController{}, `post:DoEdit`),
		beego.NSRouter("/access/delete", &admin.AccessController{}, `get:Delete`),
		//轮播图管理
		beego.NSRouter("/focus", &admin.FocusController{}),
		beego.NSRouter("/focus/add", &admin.FocusController{}, `get:Add`),
		beego.NSRouter("/focus/edit", &admin.FocusController{}, `get:Edit`),
		beego.NSRouter("/focus/doAdd", &admin.FocusController{}, `post:DoAdd`),
		beego.NSRouter("/focus/doEdit", &admin.FocusController{}, `post:DoEdit`),
		beego.NSRouter("/focus/delete", &admin.FocusController{}, `get:Delete`),
		//商品分类管理
		beego.NSRouter("/goodsCate", &admin.GoodsCateController{}),
		beego.NSRouter("/goodsCate/add", &admin.GoodsCateController{}, `get:Add`),
		beego.NSRouter("/goodsCate/edit", &admin.GoodsCateController{}, `get:Edit`),
		beego.NSRouter("/goodsCate/doAdd", &admin.GoodsCateController{}, `post:DoAdd`),
		beego.NSRouter("/goodsCate/doEdit", &admin.GoodsCateController{}, `post:DoEdit`),
		beego.NSRouter("/goodsCate/delete", &admin.GoodsCateController{}, `get:Delete`),
		//商品类型管理
		beego.NSRouter("/goodsType", &admin.GoodsTypeController{}),
		beego.NSRouter("/goodsType/add", &admin.GoodsTypeController{}, `get:Add`),
		beego.NSRouter("/goodsType/edit", &admin.GoodsTypeController{}, `get:Edit`),
		beego.NSRouter("/goodsType/doAdd", &admin.GoodsTypeController{}, `post:DoAdd`),
		beego.NSRouter("/goodsType/doEdit", &admin.GoodsTypeController{}, `post:DoEdit`),
		beego.NSRouter("/goodsType/delete", &admin.GoodsTypeController{}, `get:Delete`),
		//商品类型属性管理
		beego.NSRouter("/goodsTypeAttribute", &admin.GoodsTypeAttrController{}),
		beego.NSRouter("/goodsTypeAttribute/add", &admin.GoodsTypeAttrController{}, `get:Add`),
		beego.NSRouter("/goodsTypeAttribute/edit", &admin.GoodsTypeAttrController{}, `get:Edit`),
		beego.NSRouter("/goodsTypeAttribute/doAdd", &admin.GoodsTypeAttrController{}, `post:DoAdd`),
		beego.NSRouter("/goodsTypeAttribute/doEdit", &admin.GoodsTypeAttrController{}, `post:DoEdit`),
		beego.NSRouter("/goodsTypeAttribute/delete", &admin.GoodsTypeAttrController{}, `get:Delete`),
		//商品管理
		beego.NSRouter("/goods", &admin.GoodsController{}),
		beego.NSRouter("/goods/add", &admin.GoodsController{}, `get:Add`),
		beego.NSRouter("/goods/edit", &admin.GoodsController{}, `get:Edit`),
		beego.NSRouter("/goods/doAdd", &admin.GoodsController{}, `post:DoAdd`),
		beego.NSRouter("/goods/doEdit", &admin.GoodsController{}, `post:DoEdit`),
		beego.NSRouter("/goods/delete", &admin.GoodsController{}, `get:Delete`),
		beego.NSRouter("/goods/doUpload", &admin.GoodsController{}, `post:DoUpload`),
		beego.NSRouter("/goods/getGoodsTypeAttribute", &admin.GoodsController{}, `get:GetGoodsTypeAttribute`),
		beego.NSRouter("/goods/changeGoodsImageColor", &admin.GoodsController{}, `get:ChangeGoodsImageColor`),
		beego.NSRouter("/goods/removeGoodsImage", &admin.GoodsController{}, `get:RemoveGoodsImage`),
		//导航管理
		beego.NSRouter("/nav", &admin.NavController{}),
		beego.NSRouter("/nav/add", &admin.NavController{}, `get:Add`),
		beego.NSRouter("/nav/edit", &admin.NavController{}, `get:Edit`),
		beego.NSRouter("/nav/doAdd", &admin.NavController{}, `post:DoAdd`),
		beego.NSRouter("/nav/doEdit", &admin.NavController{}, `post:DoEdit`),
		beego.NSRouter("/nav/delete", &admin.NavController{}, `get:Delete`),
		//系统设置
		beego.NSRouter("/setting", &admin.SettingController{}),
		beego.NSRouter("/setting/doEdit", &admin.SettingController{}, `post:DoEdit`),
	)
	beego.AddNamespace(ns)
}
