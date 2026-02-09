@echo off
title Unity XR 开发指南
color 0A

echo 🚀 Unity XR 开发指南 - 文档服务启动器
echo ==========================================
echo 📝 项目地址: https://github.com/your-username/unity-xr-guide
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

REM 检查 npm
npm -v >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 npm
    pause
    exit /b 1
)

echo ✅ Node.js 已安装
echo ✅ npm 已安装
echo.

REM 检查 docsify-cli
where docsify >nul 2>nul
if %errorlevel% neq 0 (
    echo ⚠️  未找到 docsify-cli，正在安装...
    npm install -g docsify-cli@latest
    echo ✅ docsify-cli 安装完成
    echo.
)

echo 📊 docsify-cli 版本:
docsify -v
echo.

echo 🔄 正在启动 Docsify 服务...
echo ==========================================
docsify serve . --port 3000

pause