# Unity Basics

Unity is the world's most popular real-time 3D development platform and the preferred engine for XR development.

## 🎮 Unity Introduction

Unity is a cross-platform game engine developed by Unity Technologies, supporting both 2D and 3D game development, and is also a powerful tool for XR application development.

### Key Features
- **Cross-platform Support**: Supports publishing to 25+ platforms
- **Visual Editing**: WYSIWYG editing interface
- **Strong Community**: Active developer community and rich resources
- **Flexible Architecture**: Supports C# script extensions
- **Real-time Rendering**: High-quality real-time graphics rendering

## 🖥️ Interface Layout

### Main Windows
1. **Scene View**: 3D scene editing window
2. **Game View**: Game runtime preview window
3. **Hierarchy**: Scene object hierarchy structure
4. **Project**: Project resource manager
5. **Inspector**: Object property inspector

### Layout Switching
- Can save and switch between different window layouts
- Supports custom interface configuration
- Quick view switching with shortcut keys

## 📦 Core Concepts

### GameObjects
Basic entity units in scenes.

```csharp
// Example code for creating game objects
GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
cube.name = "MyCube";
```

### Components
Functional modules attached to GameObjects.

Common components include:
- Transform
- Mesh Renderer
- Collider
- Rigidbody

### Scenes
Containers containing game content.

### Assets
Various files used in projects:
- Models, textures, audio
- Script files
- Prefabs

## 🎯 Basic Operations

### Object Manipulation
- **Selection**: Click to select objects
- **Move**: W key or move tool
- **Rotate**: E key or rotate tool  
- **Scale**: R key or scale tool

### View Control
- **Pan**: Alt + right-click drag
- **Zoom**: Scroll wheel zoom
- **Rotate**: Alt + left-click drag

### Shortcut Keys
- `F`: Focus on selected object
- `Ctrl/Cmd + D`: Duplicate object
- `Delete`: Delete object
- `Space`: Play/Pause

## 📝 Scripting Basics

Unity uses C# as its primary scripting language.

### Basic Script Structure
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
        // Logic executed every frame
    }
}
```

### Lifecycle Methods
- `Awake()`: Called when object awakens
- `Start()`: Called before first frame update
- `Update()`: Called every frame
- `FixedUpdate()`: Called at fixed time intervals
- `OnDestroy()`: Called when object is destroyed

## 🎨 Asset Management

### Importing Assets
1. Drag files to Project window
2. Use Assets → Import New Asset
3. Supports multiple formats: FBX, OBJ, PNG, MP3, etc.

### Asset Organization
Recommended classification by type:
```
Assets/
├── Models/
├── Textures/
├── Scripts/
├── Materials/
└── Prefabs/
```

## ⚙️ Project Settings

### Player Settings
- Application name and icon settings
- Resolution and display settings
- XR-related configuration

### Quality Settings
- Graphics quality levels
- Shadow and lighting settings
- Performance optimization options

### Input Settings
- Input axis configuration
- Controller mapping
- Touch input settings

## 🔧 Common Tools

### Console Window
View debug information and error logs.

### Profiler
Performance analysis tool, monitoring CPU, memory, rendering and other performance metrics.

### Asset Store
Unity's official asset store, providing a large number of free and paid resources.

## 💡 Learning Suggestions

### Practice Exercises
1. Create simple scenes
2. Add basic interactions
3. Try different component combinations
4. Write simple scripts

### Resource Recommendations
- Unity official tutorials
- Unity Learn platform
- Community forums and Q&A
- YouTube tutorial videos

### Important Notes
- Develop good project organization habits
- Save work progress regularly
- Make full use of Unity's documentation and help system
- Progress step by step, don't rush

After mastering these basic knowledge, you can start actual XR development operations!