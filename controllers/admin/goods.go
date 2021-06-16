package admin

type GoodsController struct {
	BaseController
}

func (c *GoodsController) Get() {
	c.TplName = "admin/goods/index.html"
}

func (c *GoodsController) Add() {

	c.TplName = "admin/goods/add.html"
}

func (c *GoodsController) DoAdd() {
	c.Ctx.WriteString("执行增加")
}
func (c *GoodsController) Edit() {

	c.Ctx.WriteString("修改")
}

func (c *GoodsController) DoEdit() {
	c.Ctx.WriteString("执行修改")
}
func (c *GoodsController) Delete() {

	c.Ctx.WriteString("删除")
}
