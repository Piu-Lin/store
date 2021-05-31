package main

import (
	"beegoxiaomi/models"
	_ "beegoxiaomi/routers"
	"encoding/gob"

	"github.com/astaxie/beego"
	_ "github.com/astaxie/beego/session/redis"
)

func init() {
	gob.Register(models.Manager{})
}
func main() {
	beego.AddFuncMap("unixToDate", models.UnixToDate)
	beego.BConfig.WebConfig.Session.SessionProvider = "redis"
	beego.BConfig.WebConfig.Session.SessionProviderConfig = "127.0.0.1:6379"
	beego.Run()
}
