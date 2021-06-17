package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsTypeAttribute struct {
	Id        int    `json:"id"`         // 产品类型描述
	CateId    int    `json:"cate_id"`    // 所属的大类
	Title     string `json:"title"`      // 标题
	AttrType  int    `json:"attr_type"`  //  所描述的类型 1为是否 2为单种 3为多种下拉表示
	AttrValue string `json:"attr_value"` // 描述的值
	Status    int    `json:"status"`     // 所处状态 1为存在
	Sort      int    `json:"sort"`       // 排序值
	AddTime   int    `json:"add_time"`   // 添加时间
}

func (GoodsTypeAttribute) TableName() string {
	return "goods_type_attribute"
}
