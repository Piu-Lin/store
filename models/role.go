package models

type Role struct {
	Id          int    //角色id
	Title       string //角色名
	Description string // 角色描述
	Status      int    // 角色启用状态 1为启用
	AddTime     int    // 角色添加时间
}

func (Role) TableName() string {
	return "role"
}
