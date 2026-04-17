#!/bin/bash

# iYang GitHub Pages 部署脚本
# 使用方法: ./deploy.sh

echo "🚀 开始部署 iYang 网站到 GitHub Pages..."
echo ""

# 检查是否已配置 Git
if [ -z "$(git config --global user.name)" ]; then
    echo "⚙️  配置 Git 用户名..."
    git config --global user.name "athenalion007"
fi

if [ -z "$(git config --global user.email)" ]; then
    echo "⚙️  配置 Git 邮箱..."
    git config --global user.email "athenalion007@users.noreply.github.com"
fi

# 初始化 Git 仓库（如果不存在）
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
fi

# 添加远程仓库
echo "🔗 添加远程仓库..."
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/athenalion007/iyang-app.git

# 添加所有文件
echo "📁 添加文件到 Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "Initial website deployment - $(date '+%Y-%m-%d %H:%M:%S')" || echo "没有更改需要提交"

# 推送到 GitHub
echo ""
echo "📤 推送到 GitHub..."
echo "⚠️  如果提示输入用户名和密码："
echo "   用户名: athenalion007"
echo "   密码: 使用 Personal Access Token (在 GitHub Settings -> Developer settings -> Personal access tokens 生成)"
echo ""

git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 部署成功！"
    echo ""
    echo "🌐 网站地址:"
    echo "   首页: https://athenalion007.github.io/iyang-app"
    echo "   支持: https://athenalion007.github.io/iyang-app/support.html"
    echo "   隐私: https://athenalion007.github.io/iyang-app/privacy.html"
    echo ""
    echo "⏱️  等待 2-5 分钟后网站即可访问"
    echo ""
    echo "📋 下一步:"
    echo "   1. 访问 https://github.com/athenalion007/iyang-app"
    echo "   2. 点击 Settings -> Pages 确认已启用"
    echo "   3. 在 App Store Connect 填写网站地址"
else
    echo ""
    echo "❌ 部署失败"
    echo ""
    echo "💡 可能的解决方案:"
    echo "   1. 确保 GitHub 仓库已创建: https://github.com/new"
    echo "   2. 仓库名称必须是: iyang-app"
    echo "   3. 检查网络连接"
    echo "   4. 配置 GitHub Personal Access Token"
fi
