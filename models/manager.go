package models

type Manager struct {
	Id       int    //用户id
	Username string //用户名
	Password string // 用户密码
	Email    string // 用户邮箱
	Status   int    // 用户是否在可用状态 1为可用
	RoleId   int    // 所属的角色对应的id
	AddTime  int    // 添加时间
	IsSuper  int    // 是否为超级管理员
	Role     Role   `gorm:"foreignKey:RoleId"` //以所属角色的对应id[RoleId]为主键关联role表为外键
}

func (Manager) TableName() string {
	return "manager"
}
