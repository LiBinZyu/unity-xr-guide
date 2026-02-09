@echo off
title Unity XR Development Guide
color 0A

echo 🚀 Unity XR Development Guide - Modern Launcher
echo =====================================
echo 📝 Project URL: https://github.com/LiBinZyu/unity-xr-guide
echo 🌐 Access URL: http://localhost:3000
echo ⏹️  Stop Service: Press Ctrl+C
echo.

REM Check Node.js
node -v >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Error: Node.js not found
    echo 💡 Please install Node.js first: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js installed
echo ✅ npm installed
echo.

echo 🔄 Starting Docsify Service (using latest version)...
echo ==========================================
npx docsify-cli@latest serve . --port 3000

pause