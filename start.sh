#!/bin/bash

echo "🚀 Unity XR 开发指南 - 文档服务启动器"
echo "=========================================="
echo "📝 项目地址: https://github.com/your-username/unity-xr-guide"
echo "🌐 访问地址: http://localhost:3000"
echo "⏹️  停止服务: 按 Ctrl+C"
echo ""

# 检查 Node.js 和 npm
if ! command -v node &> /dev/null; then
    echo "❌ 错误: 未找到 Node.js"
    echo "💡 请先安装 Node.js: https://nodejs.org/"
    exit 1
fi

if ! command -v npm &> /dev/null; then
    echo "❌ 错误: 未找到 npm"
    exit 1
fi

echo "✅ Node.js 版本: $(node --version)"
echo "✅ npm 版本: $(npm --version)"
echo ""

# 检查 docsify-cli 是否已安装
if ! command -v docsify &> /dev/null; then
    echo "⚠️  未找到 docsify-cli，正在安装..."
    npm install -g docsify-cli@latest
    echo "✅ docsify-cli 安装完成"
    echo ""
fi

echo "📊 docsify-cli 版本: $(docsify -v)"
echo ""

# 启动服务
echo "🔄 正在启动 Docsify 服务..."
echo "=========================================="
docsify serve . --port 3000