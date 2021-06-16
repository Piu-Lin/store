package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsType struct {
	Id          int    //类型id
	Title       string //类型标题
	Description string // 类型描述
	Status      int    // 类型状态
	AddTime     int    // 添加时间
}

func (GoodsType) TableName() string {
	return "goods_type"
}
