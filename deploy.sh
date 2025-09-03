#!/bin/bash

# Hugo 网站部署脚本
echo "🚀 开始部署 Hugo 网站..."

# 构建网站
hugo --minify

# 如果构建成功，则推送到 GitHub
if [ $? -eq 0 ]; then
    echo "✅ 网站构建成功"
    
    # 添加所有更改
    git add .
    
    # 提交更改
    git commit -m "chore: 自动部署更新"
    
    # 推送到远程仓库
    git push origin main
    
    echo "🎉 部署完成！网站已推送到 GitHub"
else
    echo "❌ 构建失败，请检查错误信息"
    exit 1
fi