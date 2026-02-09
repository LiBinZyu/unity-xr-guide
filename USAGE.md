# 使用说明

## 🚀 快速开始

### 本地运行文档

#### 方法一：使用启动脚本（推荐）
```bash
# macOS/Linux 用户
./start.sh

# Windows 用户
start.bat
```

#### 方法二：直接使用命令
```bash
# 安装 docsify-cli（如果未安装）
npm install -g docsify-cli

# 启动服务
docsify serve . --port 3000
```

#### 方法三：使用 npm scripts
```bash
npm install
npm run dev
# 或者
npm run serve
```

### 访问文档
启动成功后，在浏览器中访问: http://localhost:3000

## ⚠️ 关于弃用警告

您可能会看到类似这样的警告信息：
```
npm warn deprecated docsify-server-renderer@4.13.1
```

**这不会影响正常使用**，因为：
1. 我们使用的是客户端渲染，不需要服务端渲染
2. Docsify 4.x 仍然完全功能正常
3. 这个警告是关于未来 SSR/SSG 功能的规划

## ☁️ 部署到 GitHub Pages

### 自动部署
```bash
# 安装部署工具
npm install -g gh-pages

# 部署到 GitHub Pages
npm run deploy
```

### 手动部署步骤
1. 确保所有文件已提交到 Git
2. 运行 `gh-pages -d .` 命令
3. 在 GitHub 仓库设置中启用 Pages，选择 `gh-pages` 分支

## 📄 PDF 导出

由于 docsify-server-renderer 的弃用，PDF 导出功能暂时不可用。替代方案：

### 在线导出
1. 访问部署后的在线文档
2. 使用浏览器的打印功能（Ctrl+P / Cmd+P）
3. 选择"另存为 PDF"选项

### 手动生成
1. 安装 Markdown 转 PDF 工具
2. 将文档转换为单一 Markdown 文件
3. 使用工具如 Pandoc 生成 PDF

## ⚙️ 自定义配置

### 修改主题
在 `index.html` 中修改 CSS 链接:
```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/docsify@4/lib/themes/vue.css">
```

可用主题：
- `vue.css` - 默认 Vue 主题
- `buble.css` - 清爽蓝色主题  
- `dark.css` - 深色主题
- `pure.css` - 简洁白色主题

### 添加插件
在 `index.html` 的 `<script>` 部分添加新的插件引用。

### 修改导航
编辑 `_sidebar.md` 和 `_navbar.md` 文件来自定义导航结构。

## 📁 目录结构说明

```
docs/
├── index.html          # 主配置文件
├── README.md           # 首页内容
├── _sidebar.md         # 侧边栏导航
├── _navbar.md          # 顶部导航
├── _coverpage.md       # 封面页面
├── quickstart.md       # 快速开始指南
├── start.sh            # macOS/Linux 启动脚本
├── start.bat           # Windows 启动脚本
└── 各章节目录/
```

## 🛠️ 开发建议

### 文档编写规范
- 使用标准 Markdown 语法
- 保持结构层次清晰
- 添加适当的代码示例
- 使用图表和图片辅助说明
- 定期更新内容

### 最佳实践
1. 保持文档更新频率
2. 添加搜索关键词优化
3. 优化移动端显示效果
4. 定期备份重要内容
5. 收集用户反馈持续改进

## 🐛 故障排除

### 常见问题及解决方案

**1. 页面无法加载**
- 检查网络连接是否正常
- 确认文件路径是否正确
- 清除浏览器缓存后重试

**2. 样式显示异常**
- 确认 CDN 链接可访问
- 检查防火墙是否阻止外部资源
- 尝试更换网络环境

**3. 搜索功能失效**
- 检查 search 插件是否正确加载
- 确认配置参数是否正确
- 查看浏览器控制台错误信息

**4. 启动脚本无法运行**
- macOS/Linux: `chmod +x start.sh`
- Windows: 确保允许运行批处理文件
- 检查 Node.js 和 npm 是否正确安装

### 调试方法
- 打开浏览器开发者工具 (F12)
- 查看 Console 面板的错误信息
- 检查 Network 面板的资源加载情况
- 验证文件路径是否正确
- 测试不同浏览器的兼容性

## 🔗 有用资源

- [Docsify 官方文档](https://docsify.js.org/)
- [Markdown 语法指南](https://markdown.com.cn/)
- [GitHub Pages 帮助文档](https://pages.github.com/)
- [前端开发工具推荐](https://github.com/topics/frontend-tools)

---
> 💡 **提示**: 如果遇到任何问题，请先查看控制台错误信息，大多数问题都能通过错误信息找到解决方案。