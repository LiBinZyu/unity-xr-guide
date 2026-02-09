#!/bin/bash

echo "🚀 Unity XR Development Guide - Modern Launcher"
echo "====================================="
echo "📝 Project URL: https://github.com/LiBinZyu/unity-xr-guide"
echo "🌐 Access URL: http://localhost:3000"
echo "⏹️  Stop Service: Press Ctrl+C"
echo ""

# Check required environment
if ! command -v node &> /dev/null; then
    echo "❌ Error: Node.js not found"
    echo "💡 Please install Node.js first: https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js Version: $(node --version)"
echo "✅ npm Version: $(npm --version)"
echo ""

# Use latest docsify-cli
echo "🔄 Starting Docsify Service (using latest version)..."
echo "=========================================="
npx docsify-cli@latest serve . --port 3000