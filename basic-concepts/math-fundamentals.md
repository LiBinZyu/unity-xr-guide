# 3D 数学基础

3D 开发离不开数学，掌握必要的数学知识对 XR 开发至关重要。

## 📐 坐标系统

### Unity 坐标系
Unity 使用左手坐标系：
- **X轴**: 向右为正
- **Y轴**: 向上为正  
- **Z轴**: 向前为正

### 世界坐标 vs 本地坐标
- **世界坐标**: 相对于世界原点的绝对位置
- **本地坐标**: 相对于父对象的相对位置

```csharp
// 获取世界坐标
Vector3 worldPosition = transform.position;

// 获取本地坐标
Vector3 localPosition = transform.localPosition;
```

## ➕ 向量运算

### 向量基础
向量既有大小又有方向的量。

```csharp
// 创建向量
Vector3 position = new Vector3(1, 2, 3);
Vector3 direction = Vector3.forward;

// 向量运算
Vector3 sum = vector1 + vector2;
Vector3 difference = vector1 - vector2;
Vector3 scaled = vector1 * 2;
```

### 常用向量操作
```csharp
// 向量长度
float magnitude = vector.magnitude;

// 单位向量
Vector3 normalized = vector.normalized;

// 点积 (判断角度关系)
float dotProduct = Vector3.Dot(vector1, vector2);

// 叉积 (计算垂直向量)
Vector3 crossProduct = Vector3.Cross(vector1, vector2);

// 距离计算
float distance = Vector3.Distance(point1, point2);
```

## 📊 矩阵变换

### 变换矩阵
用于表示位置、旋转、缩放的复合变换。

```csharp
// 创建变换矩阵
Matrix4x4 translation = Matrix4x4.Translate(new Vector3(1, 2, 3));
Matrix4x4 rotation = Matrix4x4.Rotate(Quaternion.Euler(45, 0, 0));
Matrix4x4 scale = Matrix4x4.Scale(new Vector3(2, 2, 2));

// 组合变换
Matrix4x4 transform = translation * rotation * scale;
```

### 常用变换函数
```csharp
// 世界到本地变换
Vector3 localPoint = transform.InverseTransformPoint(worldPoint);

// 本地到世界变换
Vector3 worldPoint = transform.TransformPoint(localPoint);

// 方向变换
Vector3 worldDirection = transform.TransformDirection(localDirection);
```

## 🔄 旋转表示

### 欧拉角
使用三个角度值表示旋转 (X, Y, Z)。

```csharp
// 欧拉角创建四元数
Quaternion rotation = Quaternion.Euler(30, 45, 60);

// 获取欧拉角
Vector3 eulerAngles = rotation.eulerAngles;
```

### 四元数
避免万向节死锁问题的旋转表示方法。

```csharp
// 四元数运算
Quaternion q1 = Quaternion.Euler(0, 90, 0);
Quaternion q2 = Quaternion.Euler(0, 45, 0);

// 旋转组合
Quaternion combined = q1 * q2;

// 球面插值
Quaternion interpolated = Quaternion.Slerp(q1, q2, 0.5f);
```

### 轴角表示
绕指定轴旋转指定角度。

```csharp
// 绕 Y 轴旋转 90 度
Quaternion rotation = Quaternion.AngleAxis(90, Vector3.up);
```

## 📐 几何计算

### 点和平面
```csharp
// 平面定义
Plane plane = new Plane(Vector3.up, Vector3.zero);

// 点到平面距离
float distance = plane.GetDistanceToPoint(point);

// 点在平面哪一侧
bool side = plane.GetSide(point);
```

### 射线检测
```csharp
// 创建射线
Ray ray = new Ray(origin, direction);

// 射线投射
if (Physics.Raycast(ray, out RaycastHit hit))
{
    Debug.Log($"击中物体: {hit.collider.name}");
    Debug.Log($"击中点: {hit.point}");
}
```

### 球面和包围盒
```csharp
// 球体碰撞检测
Bounds bounds = new Bounds(center, size);
if (bounds.Contains(point))
{
    // 点在包围盒内
}

// 球体相交检测
float distance = Vector3.Distance(sphere1Center, sphere2Center);
bool intersecting = distance < (sphere1Radius + sphere2Radius);
```

## 🎯 实用算法

### 插值计算
```csharp
// 线性插值
float lerpValue = Mathf.Lerp(start, end, t);

// 平滑阻尼
float smoothValue = Mathf.SmoothDamp(current, target, ref velocity, smoothTime);

// 弹簧动画
transform.position = Vector3.Lerp(transform.position, targetPosition, Time.deltaTime * speed);
```

### 角度处理
```csharp
// 角度标准化
float normalizedAngle = Mathf.Repeat(angle, 360);

// 角度差计算
float angleDifference = Mathf.DeltaAngle(fromAngle, toAngle);

// 向量夹角
float angle = Vector3.Angle(vector1, vector2);
```

### 随机数生成
```csharp
// 范围内随机数
float randomFloat = Random.Range(0f, 10f);
int randomInt = Random.Range(1, 10);

// 随机方向
Vector3 randomDirection = Random.insideUnitSphere;

// 随机点在圆内
Vector2 randomPoint = Random.insideUnitCircle;
```

## 📊 矩阵和线性代数

### 矩阵运算
```csharp
// 矩阵乘法
Matrix4x4 result = matrix1 * matrix2;

// 矩阵转置
Matrix4x4 transposed = matrix.transpose;

// 矩阵逆
Matrix4x4 inverse = matrix.inverse;
```

### 行列式和特征值
虽然 Unity 没有直接提供，但理解这些概念很重要：
- 行列式表示矩阵的缩放因子
- 特征值和特征向量描述变换的主要方向

## 🔧 实际应用示例

### 物体跟随
```csharp
public class FollowTarget : MonoBehaviour
{
    public Transform target;
    public float followSpeed = 5f;
    
    void Update()
    {
        if (target != null)
        {
            Vector3 targetPosition = target.position;
            transform.position = Vector3.Lerp(transform.position, targetPosition, 
                                            Time.deltaTime * followSpeed);
        }
    }
}
```

### 朝向目标
```csharp
public class LookAtTarget : MonoBehaviour
{
    public Transform target;
    public float rotationSpeed = 5f;
    
    void Update()
    {
        if (target != null)
        {
            Vector3 direction = target.position - transform.position;
            if (direction != Vector3.zero)
            {
                Quaternion targetRotation = Quaternion.LookRotation(direction);
                transform.rotation = Quaternion.Slerp(transform.rotation, 
                                                    targetRotation, 
                                                    Time.deltaTime * rotationSpeed);
            }
        }
    }
}
```

### 边界检测
```csharp
public class BoundaryCheck : MonoBehaviour
{
    public Vector3 boundarySize = new Vector3(10, 10, 10);
    
    void Update()
    {
        Vector3 position = transform.position;
        
        // X 轴边界检测
        if (Mathf.Abs(position.x) > boundarySize.x / 2)
        {
            position.x = Mathf.Sign(position.x) * boundarySize.x / 2;
        }
        
        // Y 轴边界检测
        if (Mathf.Abs(position.y) > boundarySize.y / 2)
        {
            position.y = Mathf.Sign(position.y) * boundarySize.y / 2;
        }
        
        transform.position = position;
    }
}
```

## 💡 学习建议

### 循序渐进
1. 先掌握基本概念和 API 使用
2. 通过实际项目加深理解
3. 逐步学习高级数学知识

### 实践为主
- 多写代码验证数学概念
- 调试观察数值变化
- 可视化数学运算结果

### 资源推荐
- Unity 官方数学文档
- 3D 数学经典教材
- 在线数学教程
- 开源项目源码学习

扎实的数学基础是成为优秀 XR 开发者的重要保障！