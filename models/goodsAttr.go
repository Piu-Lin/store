package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsAttr struct {
	Id              int    //商品描述的主键id
	GoodsId         int    //对应的商品
	AttributeCateId int    //其对应的商品类型的id 用于后续做搜索使用
	AttributeId     int    //商品类型的属性的id
	AttributeTitle  string //商品类型属性中的标题值
	AttributeType   int    //商品描述表示为何种展现形式 1为单号文本框 2为多行文本框 3为选择下拉框
	AttributeValue  string //商品描述的值
	Sort            int    //描述的排序值
	AddTime         int    //添加时间
	Status          int    //存在状态 1为存在
}

func (GoodsAttr) TableName() string {
	return "goods_attr"
}
