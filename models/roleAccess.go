package models

import (
	"time"

	_ "github.com/jinzhu/gorm"
)

type RoleAccess struct {
	AccessId int //权限id
	RoleId   int //角色id
}

func (RoleAccess) TableName() string {
	return "role_access"
}

// 将时间戳转化为可表示时间
func GetDay() string {
	template := "20060102"
	return time.Now().Format(template)
}
