# 3D Math Fundamentals

3D development cannot be separated from mathematics, and mastering necessary mathematical knowledge is crucial for XR development.

## 📐 Coordinate Systems

### Unity Coordinate System
Unity uses a left-handed coordinate system:
- **X-axis**: Positive to the right
- **Y-axis**: Positive upward  
- **Z-axis**: Positive forward

### World Coordinates vs Local Coordinates
- **World Coordinates**: Absolute position relative to world origin
- **Local Coordinates**: Relative position relative to parent object

```csharp
// Get world coordinates
Vector3 worldPosition = transform.position;

// Get local coordinates
Vector3 localPosition = transform.localPosition;
```

## ➕ Vector Operations

### Vector Basics
Vectors are quantities with both magnitude and direction.

```csharp
// Create vectors
Vector3 position = new Vector3(1, 2, 3);
Vector3 direction = Vector3.forward;

// Vector operations
Vector3 sum = vector1 + vector2;
Vector3 difference = vector1 - vector2;
Vector3 scaled = vector1 * 2;
```

### Common Vector Operations
```csharp
// Vector magnitude
float magnitude = vector.magnitude;

// Unit vector
Vector3 normalized = vector.normalized;

// Dot product (determine angular relationship)
float dotProduct = Vector3.Dot(vector1, vector2);

// Cross product (calculate perpendicular vector)
Vector3 crossProduct = Vector3.Cross(vector1, vector2);

// Distance calculation
float distance = Vector3.Distance(point1, point2);
```

## 📊 Matrix Transformations

### Transformation Matrices
Used to represent composite transformations of position, rotation, and scaling.

```csharp
// Create transformation matrix
Matrix4x4 translation = Matrix4x4.Translate(new Vector3(1, 2, 3));
Matrix4x4 rotation = Matrix4x4.Rotate(Quaternion.Euler(45, 0, 0));
Matrix4x4 scale = Matrix4x4.Scale(new Vector3(2, 2, 2));

// Combine transformations
Matrix4x4 transform = translation * rotation * scale;
```

### Common Transformation Functions
```csharp
// World to local transformation
Vector3 localPoint = transform.InverseTransformPoint(worldPoint);

// Local to world transformation
Vector3 worldPoint = transform.TransformPoint(localPoint);

// Direction transformation
Vector3 worldDirection = transform.TransformDirection(localDirection);
```

## 🔄 Rotation Representation

### Euler Angles
Represent rotation using three angle values (X, Y, Z).

```csharp
// Euler angles create quaternion
Quaternion rotation = Quaternion.Euler(30, 45, 60);

// Get Euler angles
Vector3 eulerAngles = rotation.eulerAngles;
```

### Quaternions
Rotation representation method that avoids gimbal lock problems.

```csharp
// Quaternion operations
Quaternion q1 = Quaternion.Euler(0, 90, 0);
Quaternion q2 = Quaternion.Euler(0, 45, 0);

// Rotation combination
Quaternion combined = q1 * q2;

// Spherical interpolation
Quaternion interpolated = Quaternion.Slerp(q1, q2, 0.5f);
```

### Axis-Angle Representation
Rotate around a specified axis by a specified angle.

```csharp
// Rotate 90 degrees around Y-axis
Quaternion rotation = Quaternion.AngleAxis(90, Vector3.up);
```

## 📐 Geometric Calculations

### Points and Planes
```csharp
// Plane definition
Plane plane = new Plane(Vector3.up, Vector3.zero);

// Point to plane distance
float distance = plane.GetDistanceToPoint(point);

// Which side of plane the point is on
bool side = plane.GetSide(point);
```

### Ray Detection
```csharp
// Create ray
Ray ray = new Ray(origin, direction);

// Ray casting
if (Physics.Raycast(ray, out RaycastHit hit))
{
    Debug.Log($"Hit object: {hit.collider.name}");
    Debug.Log($"Hit point: {hit.point}");
}
```

### Spheres and Bounding Boxes
```csharp
// Sphere collision detection
Bounds bounds = new Bounds(center, size);
if (bounds.Contains(point))
{
    // Point is inside bounding box
}

// Sphere intersection detection
float distance = Vector3.Distance(sphere1Center, sphere2Center);
bool intersecting = distance < (sphere1Radius + sphere2Radius);
```

## 🎯 Practical Algorithms

### Interpolation Calculations
```csharp
// Linear interpolation
float lerpValue = Mathf.Lerp(start, end, t);

// Smooth damping
float smoothValue = Mathf.SmoothDamp(current, target, ref velocity, smoothTime);

// Spring animation
transform.position = Vector3.Lerp(transform.position, targetPosition, Time.deltaTime * speed);
```

### Angle Processing
```csharp
// Angle normalization
float normalizedAngle = Mathf.Repeat(angle, 360);

// Angle difference calculation
float angleDifference = Mathf.DeltaAngle(fromAngle, toAngle);

// Vector angle between
float angle = Vector3.Angle(vector1, vector2);
```

### Random Number Generation
```csharp
// Random number in range
float randomFloat = Random.Range(0f, 10f);
int randomInt = Random.Range(1, 10);

// Random direction
Vector3 randomDirection = Random.insideUnitSphere;

// Random point inside circle
Vector2 randomPoint = Random.insideUnitCircle;
```

## 📊 Matrices and Linear Algebra

### Matrix Operations
```csharp
// Matrix multiplication
Matrix4x4 result = matrix1 * matrix2;

// Matrix transpose
Matrix4x4 transposed = matrix.transpose;

// Matrix inverse
Matrix4x4 inverse = matrix.inverse;
```

### Determinants and Eigenvalues
Although Unity doesn't provide direct support, understanding these concepts is important:
- Determinant represents the scaling factor of the matrix
- Eigenvalues and eigenvectors describe the main directions of transformation

## 🔧 Practical Application Examples

### Object Following
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

### Facing Target
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

### Boundary Detection
```csharp
public class BoundaryCheck : MonoBehaviour
{
    public Vector3 boundarySize = new Vector3(10, 10, 10);
    
    void Update()
    {
        Vector3 position = transform.position;
        
        // X-axis boundary detection
        if (Mathf.Abs(position.x) > boundarySize.x / 2)
        {
            position.x = Mathf.Sign(position.x) * boundarySize.x / 2;
        }
        
        // Y-axis boundary detection
        if (Mathf.Abs(position.y) > boundarySize.y / 2)
        {
            position.y = Mathf.Sign(position.y) * boundarySize.y / 2;
        }
        
        transform.position = position;
    }
}
```

## 💡 Learning Suggestions

### Progressive Learning
1. First master basic concepts and API usage
2. Deepen understanding through actual projects
3. Gradually learn advanced mathematical knowledge

### Practice-Oriented
- Write code to verify mathematical concepts
- Debug and observe numerical changes
- Visualize mathematical operation results

### Resource Recommendations
- Unity official math documentation
- Classic 3D math textbooks
- Online math tutorials
- Learn from open-source project source code

Solid mathematical foundation is an important guarantee for becoming an excellent XR developer!