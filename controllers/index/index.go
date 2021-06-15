package index

import (
	"github.com/astaxie/beego"

	. "github.com/hunterhug/go_image"
	qrcode "github.com/skip2/go-qrcode"
)

type IndexController struct {
	beego.Controller
}

func (c *IndexController) Get() {
	filename := "static/upload/a.jpg"
	savepath := "static/upload/a_800.jpg"
	err1 := ScaleF2F(filename, savepath, 800)
	if err1 != nil {
		beego.Error(err1)
	}

	// filename := "static/upload/a.jpg"
	// savepath := "static/upload/a_800_300.jpg"

	// err := ThumbnailF2F(filename, savepath, 800, 300)
	// if err != nil {
	// 	beego.Error(err)
	// }

	//按宽度和高度进行比例缩放，输入和输出都是文件
	// filename := "static/upload/b.png"
	// savepath := "static/upload/b_400.png"
	// err := ThumbnailF2F(filename, savepath, 400, 400)
	// if err != nil {
	// 	beego.Error(err)
	// }

	//生成二维码

	err5 := qrcode.WriteFile("https://www.bing.com", qrcode.Medium, 800, "static/upload/qr.png")
	if err5 != nil {
		beego.Error("生成二维码失败")
	}
	c.TplName = "index/index.html"
}
