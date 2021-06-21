package models

import (
	_ "github.com/jinzhu/gorm"
)

type Setting struct {
	Id              int    `form:"id"`               //主键标志
	SiteTitle       string `form:"site_title"`       //网站名称
	SiteLogo        string `form:"site_logo"`        //网站图标
	SiteKeywords    string `form:"site_keywords"`    // 网站关键词
	SiteDescription string `form:"site_description"` // 网站描述
	NoPicture       string `form:"no_picture"`       // 无图片时展示的图片
	SiteIcp         string `form:"site_icp"`         //备案信息
	SiteTel         string `form:"site_tel"`         //客服电话
	SearchKeywords  string `form:"search_keywords"`  //搜索关键词
	TongjiCode      string `form:"tongji_code"`      //统计代码
	Appid           string `form:"appid"`            //oss云存储id
	AppSecret       string `form:"app_secret"`       //云存储密码
	EndPoint        string `form:"end_point"`        //云存储结束点
	BucketName      string `form:"bucket_name"`      //存储名字
	OssStatus       int    `form:"oss_status"`       //云存储启用状态 1为启用
}

func (Setting) TableName() string {
	return "setting"
}
