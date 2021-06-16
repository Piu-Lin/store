package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsTypeAttribute struct {
	Id        int    // 产品类型描述
	CateId    int    // 所属的大类
	Title     string // 标题
	AttrType  int    //  所描述的类型 1为是否 2为单种 3为多种下拉表示
	AttrValue string // 描述的值
	Status    int    // 所处状态 1为存在
	Sort      int    // 排序值
	AddTime   int    // 添加时间
}

func (GoodsTypeAttribute) TableName() string {
	return "goods_type_attribute"
}
