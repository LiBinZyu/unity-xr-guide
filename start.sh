#!/bin/bash

echo "🚀 Unity XR 开发指南 - 现代化启动器"
echo "====================================="
echo "📝 项目地址: https://github.com/LiBinZyu/unity-xr-guide"
echo "🌐 访问地址: http://localhost:3000"
echo "⏹️  停止服务: 按 Ctrl+C"
echo ""

# 检查必要环境
if ! command -v node &> /dev/null; then
    echo "❌ 错误: 未找到 Node.js"
    echo "💡 请先安装 Node.js: https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js 版本: $(node --version)"
echo "✅ npm 版本: $(npm --version)"
echo ""

# 使用最新的 docsify-cli
echo "🔄 正在启动 Docsify 服务 (使用最新版本)..."
echo "=========================================="
npx docsify-cli@latest serve . --port 3000