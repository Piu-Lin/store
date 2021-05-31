package admin

import (
	"beegoxiaomi/models"
	"strings"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/cache"
	"github.com/astaxie/beego/utils/captcha"
)

type LoginController struct {
	BaseController
}

var cpt *captcha.Captcha

func init() {
	store := cache.NewMemoryCache()
	cpt = captcha.NewWithFilter("/captcha/", store)
	cpt.ChallengeNums = 4
	cpt.StdHeight = 40
	cpt.StdWidth = 100
}

func (c *LoginController) Get() {
	user := []models.User{}
	models.DB.Find(&user)
	beego.Info(user)
	c.TplName = "admin/login/login.html"
}

func (c *LoginController) DoLogin() {
	var flag = cpt.VerifyReq(c.Ctx.Request)
	if flag {
		//获取并解析数据
		username := strings.Trim(c.GetString("username"), " ")
		password := models.Md5(strings.Trim(c.GetString("password"), " "))
		//与数据库做比较
		manager := []models.Manager{}
		models.DB.Where("username=? AND password=?", username, password).Find(&manager)
		if len(manager) > 0 {
			//保存用户信息，跳转
			c.SetSession("userinfo", manager[0])
			c.Success("验证成功", "/")
		} else {
			c.Error("用户名或密码错误", "/login")
		}

	} else {
		// c.Ctx.WriteString("验证失败")
		c.Error("验证失败", "/login")
	}
}

func (c *LoginController) LoginOut() {
	c.DelSession("userinfo")
	c.Success("退出登录成功", "/login")
}
