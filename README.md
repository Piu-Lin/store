# 电子商务信息系统后端建设

## 公共方法封装

### 跳转

封装公共跳转方法，显示正确或错误跳转信息，于`controllers/base.go`。

```go
func (c *BaseController) Success(message string, redirect string) {
	c.Data["message"] = message
	c.Data["redirect"] = "/" + beego.AppConfig.String("adminPath") + redirect
	c.TplName = "admin/public/success.html"
}

func (c *BaseController) Error(message string, redirect string) {
	c.Data["message"] = message
	c.Data["redirect"] = "/" + beego.AppConfig.String("adminPath") + redirect
	c.TplName = "admin/public/error.html"
}
```

### 图片上传

封装图片上传与验证逻辑，于`controllers/base.go`。

```go
func (c *BaseController) UploadImg(picName string) (string, error) {
	//1、获取上传的文件
	f, h, err := c.GetFile(picName)
	if err != nil {
		return "", err
	}
	//2、关闭文件流
	defer f.Close()
	//3、获取后缀名 判断类型是否正确  .jpg .png .gif .jpeg
	extName := path.Ext(h.Filename)
	allowExtMap := map[string]bool{
		".jpg":  true,
		".png":  true,
		".gif":  true,
		".jpeg": true,
	}
	if _, ok := allowExtMap[extName]; !ok {
		return "", errors.New("图片后缀名不合法")
	}
	//4、创建图片保存目录  static/upload/20200623
	day := models.GetDay()
	dir := "static/upload/" + day
	if err := os.MkdirAll(dir, 0666); err != nil {
		return "", err
	}
	//5、生成文件名称   144325235235.png
	fileUnixName := strconv.FormatInt(models.GetUnix(), 10)
	//static/upload/20200623/144325235235.png
	saveDir := path.Join(dir, fileUnixName+extName)
	//6、保存图片
	c.SaveToFile(picName, saveDir)
	return saveDir, nil
}
```

### 时间戳

封装时间戳获取以及转换方法。于`models/tools.go`

```go

func UnixToDate(timestamp int) string {

	t := time.Unix(int64(timestamp), 0)

	return t.Format("2006-01-02 15:04:05")
}

//2020-05-02 15:04:05
func DateToUnix(str string) int64 {
	template := "2006-01-02 15:04:05"
	t, err := time.ParseInLocation(template, str, time.Local)
	if err != nil {
		beego.Info(err)
		return 0
	}
	return t.Unix()
}

func GetUnix() int64 {
	return time.Now().Unix()
}
func GetDate() string {
	template := "2006-01-02 15:04:05"
	return time.Now().Format(template)
}
```

### 图片剪切

使用`go_image`包，进行图片裁剪

```go
filename := "static/upload/a.jpg"
	savepath := "static/upload/a_800.jpg"
	err1 := ScaleF2F(filename, savepath, 800)
	if err1 != nil {
		beego.Error(err1)
	}

	// filename := "static/upload/a.jpg"
	// savepath := "static/upload/a_800_300.jpg"

	// err := ThumbnailF2F(filename, savepath, 800, 300)
	// if err != nil {
	// 	beego.Error(err)
	// }

	//按宽度和高度进行比例缩放，输入和输出都是文件
	// filename := "static/upload/b.png"
	// savepath := "static/upload/b_400.png"
	// err := ThumbnailF2F(filename, savepath, 400, 400)
	// if err != nil {
	// 	beego.Error(err)
	// }
```

### 二维码

使用`go-qrcode`进行二维码生成

```go
	err5 := qrcode.WriteFile("https://www.bing.com", qrcode.Medium, 800, "static/upload/qr.png")
	if err5 != nil {
		beego.Error("生成二维码失败")
	}
	c.TplName = "index/index.html"
```
