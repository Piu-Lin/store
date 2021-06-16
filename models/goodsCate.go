package models

import (
	_ "github.com/jinzhu/gorm"
)

type GoodsCate struct {
	Id            int         //产品大类id
	Title         string      // 产品大类名
	CateImg       string      // 图片url
	Link          string      // 跳转的连接地址
	Template      string      // 所采取的模板
	Pid           int         // 分类时所采用的id
	SubTitle      string      // 副标题
	Keywords      string      // 关键词
	Description   string      // 描述
	Sort          int         // 排序值
	Status        int         // 是否启用 1为启用
	AddTime       int         // 添加时间
	GoodsCateItem []GoodsCate `gorm:"foreignKey:Pid"` // 以分类时所采用的id为逐渐 添加其子分类为自连外键
}

func (GoodsCate) TableName() string {
	return "goods_cate"
}
