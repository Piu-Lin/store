package routers

import (
	"beegoxiaomi/controllers/api"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/api",
		beego.NSRouter("/login", &api.LoginController{}),
	)
	beego.AddNamespace(ns)
}
