package models

type Manager struct {
	Id       int
	Username string
	Password string
	Email    string
	Status   int
	RoleId   int
	AddTime  int
	IsSuper  int
	Role     Role `gorm:"foreignKey:RoleId"`
}

func (Manager) TableName() string {
	return "manager"
}
