#!/bin/bash

echo "🔍 网站部署状态检查工具"
echo "========================"

# 检查本地最新提交
echo "📦 本地最新提交:"
git log --oneline -1
echo ""

# 检查测试文件内容
echo "📄 测试文件内容:"
cat public/test-deploy.txt 2>/dev/null || echo "测试文件不存在"
echo ""

# 检查 DNS 解析
echo "🌐 DNS 解析状态:"
dig q-linked.org +short | head -3
echo ""

echo "✅ 需要手动检查的项目:"
echo "1. GitHub Actions: https://github.com/ArtiNexus/q-linked-org/actions"
echo "2. GitHub Pages设置: https://github.com/ArtiNexus/q-linked-org/settings/pages"
echo "3. 网站测试文件: https://q-linked.org/test-deploy.txt"
echo ""

echo "🔄 如果网站未更新，请执行:"
echo "1. 在GitHub Pages设置中点击'Retry deployment'"
echo "2. 等待5-10分钟"
echo "3. 清除浏览器缓存后重新访问"
echo "4. 运行: curl -s https://q-linked.org/test-deploy.txt || echo '文件尚未更新'"

# 添加执行权限
chmod +x "$0"