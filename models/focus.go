package models

import (
	_ "github.com/jinzhu/gorm"
)

type Focus struct {
	Id        int    // 图片id
	Title     string // 图片标题
	FocusType int    // 轮播图类型
	FocusImg  string // 轮播图url
	Link      string // 轮播图链接
	Sort      int    // 排序值
	Status    int    // 状态 1为存在
	AddTime   int    // 添加时间
}

func (Focus) TableName() string {
	return "focus"
}
