#!/bin/bash

echo "🚀 Unity XR 开发指南 - 现代化启动器"
echo "====================================="
echo "📝 访问地址: http://localhost:3000"
echo "⏹️  停止服务: 按 Ctrl+C"
echo ""

# 使用 Python 简单服务器（无任何依赖警告）
if command -v python3 &> /dev/null; then
    echo "✅ 使用 Python 3 HTTP 服务器"
    python3 -m http.server 3000
elif command -v python &> /dev/null; then
    echo "✅ 使用 Python HTTP 服务器"
    python -m SimpleHTTP.server 3000
else
    echo "❌ 未找到 Python，尝试使用 Node.js 方案..."
    
    # 备用方案：使用 serve 包
    if ! command -v serve &> /dev/null; then
        echo "📦 安装现代静态服务器..."
        npm install -g serve
    fi
    
    echo "✅ 使用 serve 静态服务器"
    serve . -p 3000
fi