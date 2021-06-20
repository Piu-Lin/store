package models

import (
	_ "github.com/jinzhu/gorm"
)

type Nav struct {
	Id        int    //主键表示
	Title     string // 链接名称
	Link      string //链接url
	Position  int    // 链接位置 1为顶部 2为中间 3为底部
	IsOpennew int    // 是否在新窗口打开 1为新
	Relation  string // 关联商品 用逗号隔开
	Sort      int    //  排序位置
	Status    int    //  存续状态1 为存在
	AddTime   int    //  添加时间
}

func (Nav) TableName() string {
	return "nav"
}
