package admin

import (
	"beegoxiaomi/models"
	"fmt"
	"strconv"
	"strings"
)

type AdminController struct {
	BaseController
}

func (c *AdminController) Get() {
	manager := []models.Manager{}
	models.DB.Preload("Role").Find(&manager)
	c.Data["manager"] = manager
	c.TplName = "admin/manager/index.html"
	// c.Data["json"] = manager
	// c.ServeJSON()
}

func (c *AdminController) Add() {
	//获取所有的角色
	role := []models.Role{}
	models.DB.Find(&role)
	c.Data["role"] = role
	c.TplName = "admin/manager/add.html"
}

func (c *AdminController) DoAdd() {
	//获取数据
	roleId, err1 := c.GetInt("role_id")
	if err1 != nil {
		c.Error("非法请求", "/manager/add")
		return
	}
	username := strings.Trim(c.GetString("username"), " ")
	password := strings.Trim(c.GetString("password"), " ")
	email := strings.Trim(c.GetString("email"), " ")

	if len(username) < 2 || len(password) < 6 {
		c.Error("用户名或者密码长度不合法", "/manager/add")
		return
	}
	//判断数据库里面有没有当前用户
	managerList := []models.Manager{}
	models.DB.Where("username=?", username).Find(&managerList)
	if len(managerList) > 0 {
		c.Error("用户名已经存在", "/manager/add")
		return
	}
	//增加管理员
	manager := models.Manager{}
	manager.Username = username
	manager.Password = models.Md5(password)
	manager.Email = email
	manager.Status = 1
	manager.AddTime = int(models.GetUnix())
	manager.RoleId = roleId
	err := models.DB.Create(&manager).Error
	if err != nil {
		c.Error("增加管理员失败", "/manager/add")
		return
	}
	c.Success("增加管理员成功", "/manager")
}

func (c *AdminController) Edit() {
	id, err := c.GetInt("id")
	if err != nil {
		c.Error("参数错误", "manager")
		return
	}
	manager := models.Manager{Id: id}
	models.DB.Find(&manager)
	c.Data["manager"] = manager

	role := []models.Role{}
	models.DB.Find(&role)
	c.Data["role"] = role
	c.TplName = "admin/manager/edit.html"
}

func (c *AdminController) DoEdit() {
	id, err1 := c.GetInt("id")
	if err1 != nil {
		c.Error("非法请求", "/manager/add")
		return
	}
	roleId, err2 := c.GetInt("role_id")
	if err2 != nil {
		c.Error("非法请求", "/manager")
		return
	}
	password := strings.Trim(c.GetString("password"), " ")
	email := strings.Trim(c.GetString("email"), " ")

	manager := models.Manager{Id: id}
	models.DB.Find(&manager)
	fmt.Println(roleId)
	manager.RoleId = roleId
	manager.Email = email
	if password != "" {
		if len(password) < 6 {
			c.Error("密码长度不合法,长度不能小于6", "/manager/edit?id="+strconv.Itoa(id))
			return
		}
		manager.Password = models.Md5(password)
	}
	err := models.DB.Save(&manager).Error
	if err != nil {
		c.Error("修改数据失败", "/manager/edit?id="+strconv.Itoa(id))
	} else {
		c.Success("修改数据成功", "/manager")
	}
}
func (c *AdminController) Delete() {
	id, err := c.GetInt("id")
	if err != nil {
		c.Error("参数错误", "/manager")
		return
	}
	manager := models.Manager{Id: id}
	models.DB.Delete(&manager)
	c.Success("删除管理员成功", "/manager")
}
