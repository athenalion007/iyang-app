# GitHub Pages 部署指南

## 🚀 快速部署步骤

### 第一步：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名称填写：`iyang-app`
3. 选择 **Public**（公开）
4. 勾选 **Add a README file**
5. 点击 **Create repository**

### 第二步：上传网站文件

#### 方法 A：通过网页上传（推荐新手）

1. 打开新建的仓库页面
2. 点击 **Add file** → **Upload files**
3. 拖拽以下文件到上传区域：
   - `index.html`
   - `support.html`
   - `privacy.html`
4. 点击 **Commit changes**

#### 方法 B：通过命令行上传

```bash
# 克隆仓库到本地
git clone https://github.com/athenalion007/iyang-app.git
cd iyang-app

# 复制网站文件到仓库目录
cp /Users/macx/Documents/iYang/GitHubPages/*.html .

# 提交并推送
git add .
git commit -m "Initial website upload"
git push origin main
```

### 第三步：启用 GitHub Pages

1. 在仓库页面点击 **Settings**（设置）
2. 左侧菜单选择 **Pages**
3. **Source** 部分选择 **Deploy from a branch**
4. **Branch** 选择 **main** / **root**
5. 点击 **Save**

### 第四步：验证部署

等待 2-5 分钟后，访问：

```
https://athenalion007.github.io/iyang-app
```

如果看到网站首页，说明部署成功！🎉

---

## 📋 App Store Connect 填写信息

部署成功后，在 App Store Connect 填写以下网址：

| 字段 | 网址 |
|------|------|
| **营销网址** | `https://athenalion007.github.io/iyang-app` |
| **技术支持网址** | `https://athenalion007.github.io/iyang-app/support.html` |
| **隐私政策网址** | `https://athenalion007.github.io/iyang-app/privacy.html` |

---

## 📝 文件说明

### 已创建的文件

| 文件 | 用途 | 访问路径 |
|------|------|----------|
| `index.html` | 营销首页 | `/` |
| `support.html` | 技术支持页面 | `/support.html` |
| `privacy.html` | 隐私政策页面 | `/privacy.html` |

### 文件位置

所有文件都在：
```
/Users/macx/Documents/iYang/GitHubPages/
```

---

## 🎨 自定义修改

### 修改联系邮箱

编辑 `support.html`，搜索：
```html
support@iyang.app
```
替换为您的实际邮箱。

### 修改应用名称

编辑 `index.html`，修改：
```html
<h1>爱养生 iYang</h1>
```

### 修改版权信息

编辑所有 HTML 文件底部的：
```html
&copy; 2024 iYang Wellness
```

---

## 🔧 常见问题

### Q: 网站显示 404 错误？
A: 等待 5-10 分钟让 GitHub Pages 生效，或检查文件是否已上传到 main 分支。

### Q: 如何更新网站内容？
A: 修改本地文件后重新上传到 GitHub 仓库，更改会自动部署。

### Q: 可以使用自定义域名吗？
A: 可以！在仓库 Settings → Pages → Custom domain 中添加您的域名。

### Q: 网站支持 HTTPS 吗？
A: 支持！GitHub Pages 自动提供 HTTPS 加密。

---

## ✅ 部署检查清单

- [ ] 创建 GitHub 仓库 `iyang-app`
- [ ] 上传 3 个 HTML 文件
- [ ] 启用 GitHub Pages
- [ ] 验证网站可以访问
- [ ] 在 App Store Connect 填写网址
- [ ] 提交 App 审核

---

## 📞 需要帮助？

如有问题，请参考：
- [GitHub Pages 文档](https://docs.github.com/en/pages)
- [App Store Connect 帮助](https://help.apple.com/app-store-connect/)

---

**预计部署时间：5-10 分钟** ⏱️
