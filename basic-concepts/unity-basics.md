# Unity 基础

Unity 是世界上最流行的实时 3D 开发平台，也是 XR 开发的首选引擎。

## 🎮 Unity 简介

Unity 是由 Unity Technologies 开发的跨平台游戏引擎，支持 2D 和 3D 游戏开发，同时也是 XR 应用开发的强大工具。

### 主要特点
- **跨平台支持**: 支持 25+ 平台发布
- **可视化编辑**: 所见即所得的编辑界面
- **强大社区**: 活跃的开发者社区和丰富资源
- **灵活架构**: 支持 C# 脚本扩展
- **实时渲染**: 高质量的实时图形渲染

## 🖥️ 界面布局

### 主要窗口
1. **Scene 视图**: 3D 场景编辑窗口
2. **Game 视图**: 游戏运行预览窗口
3. **Hierarchy**: 场景对象层级结构
4. **Project**: 项目资源管理器
5. **Inspector**: 对象属性检查器

### 布局切换
- 可以保存和切换不同的窗口布局
- 支持自定义界面配置
- 快捷键快速切换视图

## 📦 核心概念

### GameObjects (游戏对象)
场景中的基本实体单位。

```csharp
// 创建游戏对象的示例代码
GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
cube.name = "MyCube";
```

### Components (组件)
附加到 GameObject 上的功能模块。

常用组件包括：
- Transform (变换)
- Mesh Renderer (网格渲染器)
- Collider (碰撞体)
- Rigidbody (刚体)

### Scenes (场景)
包含游戏内容的容器。

### Assets (资源)
项目中使用的各种文件：
- 模型、纹理、音频
- 脚本文件
- 预制体 (Prefabs)

## 🎯 基本操作

### 对象操作
- **选择**: 单击选择对象
- **移动**: W 键或移动工具
- **旋转**: E 键或旋转工具  
- **缩放**: R 键或缩放工具

### 视图控制
- **平移**: Alt + 右键拖拽
- **缩放**: 滚轮缩放
- **旋转**: Alt + 左键拖拽

### 快捷键
- `F`: 聚焦选中对象
- `Ctrl/Cmd + D`: 复制对象
- `Delete`: 删除对象
- `Space`: 播放/暂停

## 📝 脚本基础

Unity 使用 C# 作为主要脚本语言。

### 基本脚本结构
```csharp
using UnityEngine;

public class BasicScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        Debug.Log("Hello Unity!");
    }

    // Update is called once per frame
    void Update()
    {
        // 每帧执行的逻辑
    }
}
```

### 生命周期方法
- `Awake()`: 对象唤醒时调用
- `Start()`: 第一帧更新前调用
- `Update()`: 每帧调用
- `FixedUpdate()`: 固定时间间隔调用
- `OnDestroy()`: 对象销毁时调用

## 🎨 资源管理

### 导入资源
1. 将文件拖拽到 Project 窗口
2. 使用 Assets → Import New Asset
3. 支持多种格式：FBX、OBJ、PNG、MP3 等

### 资源组织
建议按类型分类存放：
```
Assets/
├── Models/
├── Textures/
├── Scripts/
├── Materials/
└── Prefabs/
```

## ⚙️ 项目设置

### Player Settings
- 应用名称和图标设置
- 分辨率和显示设置
- XR 相关配置

### Quality Settings
- 图形质量等级
- 阴影和光照设置
- 性能优化选项

### Input Settings
- 输入轴配置
- 控制器映射
- 触摸输入设置

## 🔧 常用工具

### Console 窗口
查看调试信息和错误日志。

### Profiler
性能分析工具，监控 CPU、内存、渲染等性能指标。

### Asset Store
Unity 官方资源商店，提供大量免费和付费资源。

## 💡 学习建议

### 实践练习
1. 创建简单场景
2. 添加基本交互
3. 尝试不同组件组合
4. 编写简单脚本

### 资源推荐
- Unity 官方教程
- Unity Learn 平台
- 社区论坛和问答
- YouTube 教学视频

### 注意事项
- 养成良好的项目组织习惯
- 及时保存工作进度
- 多利用 Unity 的文档和帮助系统
- 循序渐进，不要急于求成

掌握这些基础知识后，您就可以开始进行 XR 开发的实际操作了！