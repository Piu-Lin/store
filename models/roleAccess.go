package models

import (
	"time"

	_ "github.com/jinzhu/gorm"
)

type RoleAccess struct {
	AccessId int
	RoleId   int
}

func (RoleAccess) TableName() string {
	return "role_access"
}

func GetDay() string {
	template := "20060102"
	return time.Now().Format(template)
}
