# Usage Instructions

## 🚀 Quick Start

### Running Documentation Locally

#### Method 1: Using Startup Script (Recommended)
```bash
# For macOS/Linux users
./start.sh

# For Windows users
start.bat
```

#### Method 2: Direct Command Usage
```bash
# Install docsify-cli (if not installed)
npm install -g docsify-cli

# Start server
docsify serve . --port 3000
```

#### Method 3: Using npm scripts
```bash
npm install
npm run dev
# Or
npm run serve
```

### Accessing Documentation
After successful startup, visit in browser: http://localhost:3000

## ⚠️ About Deprecation Warning

You might see warning messages like this:
```
npm warn deprecated docsify-server-renderer@4.13.1
```

**This does not affect normal usage**, because:
1. We use client-side rendering, no server-side rendering needed
2. Docsify 4.x is still fully functional
3. This warning is about future SSR/SSG feature planning

## ☁️ Deploying to GitHub Pages

### Automatic Deployment
```bash
# Install deployment tool
npm install -g gh-pages

# Deploy to GitHub Pages
npm run deploy
```

### Manual Deployment Steps
1. Ensure all files are committed to Git
2. Run `gh-pages -d .` command
3. Enable Pages in GitHub repository settings, select `gh-pages` branch

## 📄 PDF Export

Due to deprecation of docsify-server-renderer, PDF export functionality is temporarily unavailable. Alternative solutions:

### Online Export
1. Visit deployed online documentation
2. Use browser print function (Ctrl+P / Cmd+P)
3. Select "Save as PDF" option

### Manual Generation
1. Install Markdown to PDF tools
2. Convert documentation to single Markdown file
3. Use tools like Pandoc to generate PDF

## ⚙️ Custom Configuration

### Modifying Theme
Modify CSS links in `index.html`:
```html
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/docsify@4/lib/themes/vue.css">
```

Available themes:
- `vue.css` - Default Vue theme
- `buble.css` - Fresh blue theme  
- `dark.css` - Dark theme
- `pure.css` - Clean white theme

### Adding Plugins
Add new plugin references in the `<script>` section of `index.html`.

### Modifying Navigation
Edit `_sidebar.md` and `_navbar.md` files to customize navigation structure.

## 📁 Directory Structure Explanation

```
docs/
├── index.html          # Main configuration file
├── README.md           # Homepage content
├── _sidebar.md         # Sidebar navigation
├── _navbar.md          # Top navigation
├── _coverpage.md       # Cover page
├── quickstart.md       # Quick start guide
├── start.sh            # macOS/Linux startup script
├── start.bat           # Windows startup script
└── chapter directories/
```

## 🛠️ Development Suggestions

### Documentation Writing Standards
- Use standard Markdown syntax
- Maintain clear structural hierarchy
- Add appropriate code examples
- Use charts and images for illustration
- Update content regularly

### Best Practices
1. Maintain document update frequency
2. Add search keyword optimization
3. Optimize mobile display effects
4. Regularly backup important content
5. Collect user feedback for continuous improvement

## 🐛 Troubleshooting

### Common Issues and Solutions

**1. Page fails to load**
- Check if network connection is normal
- Confirm file paths are correct
- Clear browser cache and retry

**2. Style display abnormal**
- Confirm CDN links are accessible
- Check if firewall blocks external resources
- Try changing network environment

**3. Search function fails
- Check if search plugin loads correctly
- Confirm configuration parameters are correct
- Check browser console error messages

**4. Startup script won't run**
- macOS/Linux: `chmod +x start.sh`
- Windows: Ensure batch files are allowed to run
- Check if Node.js and npm are installed correctly

### Debugging Methods
- Open browser developer tools (F12)
- Check error messages in Console panel
- Check resource loading in Network panel
- Verify file paths are correct
- Test compatibility across different browsers

## 🔗 Useful Resources

- [Docsify Official Documentation](https://docsify.js.org/)
- [Markdown Syntax Guide](https://markdown.com.cn/)
- [GitHub Pages Help Documentation](https://pages.github.com/)
- [Frontend Development Tool Recommendations](https://github.com/topics/frontend-tools)

---
> 💡 **Tip**: If you encounter any issues, first check console error messages - most problems can be solved through error information.