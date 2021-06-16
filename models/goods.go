package models

import (
	_ "github.com/jinzhu/gorm"
)

type Goods struct {
	Id            int
	Title         string
	SubTitle      string
	GoodsSn       string
	CateId        int
	ClickCount    int
	GoodsNumber   int
	Price         float64
	MarketPrice   float64
	RelationGoods string //关联商品
	GoodsAttr     string
	GoodsVersion  string //商品版本
	GoodsImg      string
	GoodsGift     string // 商品的赠品
	GoodsFitting  string // 商品的配件
	GoodsColor    string
	GoodsKeywords string
	GoodsDesc     string //排序
	Content       string //详情
	IsDelete      int
	IsHot         int
	IsBest        int
	IsNew         int
	GoodsTypeId   int
	Sort          int
	Status        int
	AddTime       int
}

func (Goods) TableName() string {
	return "goods"
}
