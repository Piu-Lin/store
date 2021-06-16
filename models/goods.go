package models

import (
	_ "github.com/jinzhu/gorm"
)

type Goods struct {
	Id            int     // 商品的id
	Title         string  // 商品名
	SubTitle      string  // 商品次级标题
	GoodsSn       string  // 商品的sn号
	CateId        int     // 商品所属的分类
	ClickCount    int     // 点击率
	GoodsNumber   int     // 库存
	Price         float64 // 价格
	MarketPrice   float64 // 市场价
	RelationGoods string  // 关联商品
	GoodsAttr     string  // 商品描述
	GoodsVersion  string  // 商品版本
	GoodsImg      string  // 商品图片
	GoodsGift     string  // 商品的赠品
	GoodsFitting  string  // 商品的配件
	GoodsColor    string  // 商品颜色
	GoodsKeywords string  // 商品关键词
	GoodsDesc     string  // 排序
	Content       string  // 详情
	IsDelete      int     // 是否已删除 1为是
	IsHot         int     // 是否为热销款式 1为是
	IsBest        int     // 是否为最佳款式 1为是
	IsNew         int     // 是否为新品 1为是
	GoodsTypeId   int     // 商品类型
	Sort          int     // 商品排序
	Status        int     // 商品状态 1为存在
	AddTime       int     // 添加时间
}

func (Goods) TableName() string {
	return "goods"
}
