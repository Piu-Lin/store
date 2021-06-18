package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsImage struct {
	Id      int    // 商品描述图片的主键id
	GoodsId int    // 所对应的商品id
	ImgUrl  string // 链接图片地址
	ColorId int    //所对应的颜色id
	Sort    int    //图片排序
	AddTime int    //添加时间
	Status  int    //存在定义 1为存在
}

func (GoodsImage) TableName() string {
	return "goods_image"
}
