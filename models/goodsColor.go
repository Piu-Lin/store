package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsColor struct {
	Id         int    // 颜色id
	ColorName  string // 颜色名
	ColorValue string // 颜色值
	Status     int    // 颜色状态
}

func (GoodsColor) TableName() string {
	return "goods_color"
}
