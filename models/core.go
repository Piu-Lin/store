package models

import (
	"github.com/astaxie/beego"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var DB *gorm.DB
var err error

func init() {
	//获取在conf/app.conf中的mysql登入用户、登入密码、使用的库名
	mysqladmin := beego.AppConfig.String("mysqladmin")
	mysqlpwd := beego.AppConfig.String("mysqlpwd")
	mysqldb := beego.AppConfig.String("mysqldb")
	//使用gorm建立与数据库的连接
	dsn := mysqladmin + ":" + mysqlpwd + "@tcp(127.0.0.1:3306)/" + mysqldb + "?charset=utf8mb4&parseTime=True&loc=Local"
	DB, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		beego.Error(err)
	}
}
