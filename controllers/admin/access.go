package admin

import (
	"beegoxiaomi/models"
	"strconv"
)

type AccessController struct {
	BaseController
}

func (c *AccessController) Get() {
	access := []models.Access{}
	models.DB.Preload("AccessItem").Where("module_id=0").Find(&access)
	c.Data["accessList"] = access
	// c.Ctx.WriteString("权限控制")
	c.TplName = "admin/access/index.html"

}

func (c *AccessController) Add() {
	access := []models.Access{}
	models.DB.Where("module_id=0").Find(&access)
	c.Data["accessList"] = access
	c.TplName = "admin/access/add.html"
}

func (c *AccessController) DoAdd() {
	moduleName := c.GetString("module_name")
	iType, _ := c.GetInt("type")
	actionName := c.GetString("action_name")
	url := c.GetString("url")
	moduleId, _ := c.GetInt("module_id")
	sort, _ := c.GetInt("sort")
	description := c.GetString("description")
	status, _ := c.GetInt("status")

	access := models.Access{}
	access.ModuleName = moduleName
	access.Type = iType
	access.ActionName = actionName
	access.Url = url
	access.ModuleId = moduleId
	access.Sort = sort
	access.Description = description
	access.Status = status

	err := models.DB.Create(&access).Error
	if err != nil {
		c.Error("增加数据失败", "/access/add")
	} else {
		c.Success("增加数据成功", "/access")
	}
}

func (c *AccessController) Edit() {
	id, err1 := c.GetInt("id")
	if err1 != nil {
		c.Error("非法请求", "/access")
	}
	access := models.Access{Id: id}
	models.DB.Find(&access)
	c.Data["access"] = access

	accessList := []models.Access{}
	models.DB.Where("module_id=0").Find(&accessList)
	// c.Ctx.WriteString("修改")
	c.Data["accessList"] = accessList
	c.TplName = "admin/access/edit.html"
}

func (c *AccessController) DoEdit() {
	id, _ := c.GetInt("id")
	moduleName := c.GetString("module_name")
	iType, _ := c.GetInt("type")
	actionName := c.GetString("action_name")
	url := c.GetString("url")
	moduleId, _ := c.GetInt("module_id")
	sort, _ := c.GetInt("sort")
	description := c.GetString("description")
	status, _ := c.GetInt("status")

	access := models.Access{Id: id}
	models.DB.Find(&access)
	access.ModuleName = moduleName
	access.Type = iType
	access.ActionName = actionName
	access.Url = url
	access.ModuleId = moduleId
	access.Sort = sort
	access.Description = description
	access.Status = status
	err := models.DB.Save(&access).Error
	if err != nil {
		c.Error("修改失败", "/access/edit?id="+strconv.Itoa(id))
		return
	}
	c.Success("修改成功", "/access/")

}
func (c *AccessController) Delete() {
	id, _ := c.GetInt("id")
	access := models.Access{Id: id}
	models.DB.Find(&access)
	if access.ModuleId == 0 { //是顶级模块
		access3 := []models.Access{}
		models.DB.Where("module_id=?", access.Id).Find(&access3)
		if len(access3) > 0 {
			c.Error("请删除顶级模块下的其他属性再重试", "/access")
			return
		}
	}
	access2 := models.Access{Id: id}
	models.DB.Delete(&access2)
	c.Success("删除权限成功", "/access")
}
