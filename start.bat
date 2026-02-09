@echo off
title Unity XR 开发指南
color 0A

echo 🚀 Unity XR 开发指南 - 现代化启动器
echo =====================================
echo 📝 项目地址: https://github.com/LiBinZyu/unity-xr-guide
echo 🌐 访问地址: http://localhost:3000
echo ⏹️  停止服务: 按 Ctrl+C
echo.

REM 检查 Node.js
node -v >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 Node.js
    echo 💡 请先安装 Node.js: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js 已安装
echo ✅ npm 已安装
echo.

echo 🔄 正在启动 Docsify 服务 (使用最新版本)...
echo ==========================================
npx docsify-cli@latest serve . --port 3000

pause