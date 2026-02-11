# Unity Basics

Unity is a powerful tool not just for indie game development (used in games like *Escape from Tarkov* and *Monument Valley*), but also for interactive visualizations and UX prototyping. It offers a flexible, unopinionated environment to build anything from strategy games to VR simulations.

If you are coming from a Computer Science or Web Development background, many of Unity's core concepts map directly to things you already know.

## GameObjects and Components

In Unity, **GameObjects** are the core building blocks, or containers for everything in your scene, from cameras and lights to the player character.

Just like in HTML, you nest GameObjects to create a hierarchy. Grouping related objects (like a "Environment" chunk) so you can enable/disable them all at once. Child objects move relative to their parents. If you have "Helper Drones" hovering around a player, making them children of the Player object means they automatically follow the player without you writing extra code.

A `<div>` needs CSS to look good and JavaScript to do something. A GameObject needs **Components**.

Unity uses an **Actor-Component model**. GameObjects are the Actors, and Components are the Scripts.
*   **MeshFilter/MeshRenderer**: The visual skin.
*   **BoxCollider/Rigidbody**: The physics properties.
*   **Light**: Makes it a light source.
*   **Camera**: Makes it a viewport.

You build complex behavior by assembling these small, reusable components.

## The Interface

The Unity Editor is split into a few key sections. For a detailed breakdown of every button and window, you can refer to the [Kodeco Unity Interface Guide](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-003).

*   [Getting Started](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=1#toc-anchor-001)
*   [Breaking Down the Interface](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-002)
*   [1. Scene View](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-003): Your workspace where you place and move objects.
*   [2. Game View](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-004): What the player sees.
*   [3. Hierarchy Window](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-005): The tree structure of your GameObjects (parent-child relationships).
*   [4. Project Window](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-006): Your file system (models, textures, scripts).
*   [5. Inspector Window](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-007): Where you configure the Components of a selected object.
*   [6. Toolbar](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=2#toc-anchor-008)
*   [7. Play Buttons](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=3#toc-anchor-009)
*   [8. Miscellaneous Editor Settings](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=3#toc-anchor-010)
*   [Where to Go From Here?](https://www.kodeco.com/7514-introduction-to-unity-getting-started-part-1-2?page=3#toc-anchor-011)

## Scripting (MonoBehaviour)

When you write custom logic in Unity, you typically write C# scripts that inherit from `MonoBehaviour`.
A standard script looks like this:

**Key Functions:**
*   `void Start()`: Called once when the object is created. Use this for initialization (like equipping items).
*   `void Update()`: Called *every single frame*. Use this for listening to input or moving objects.


You can make your scripts flexible by making variables `public`.
```csharp
public float movementSpeed = 10f;
```
This variable will essentially "pop out" into the Unity Inspector window, allowing you (or a designer) to tweak the value in real-time without touching the code.

Refer to [Beginning Programming with C#](https://www.kodeco.com/gametech/paths/learn/courses/603984-beginning-programming-with-c) for more details.

## Essential Interactions

| Concept | Code / Advice |
| :--- | :--- |
| **Movement** | Modify `transform.position` or use `transform.Translate()`. Prefer **Local Space**. |
| **Input** | `Input.GetKeyDown(KeyCode.Space)` (One-time) vs `Input.GetAxis("Horizontal")` (Smooth). |
| **References** | Drag objects to `public` variables in Inspector (Recommended) or use `GetComponent<Type>()`. |

## Basic Physics

*   **Raycasting**: "Laser pointer" logic for shooting or selecting objects.
    *   `Physics.Raycast(origin, direction, out hitInfo)`
*   **Collisions**: Requires a **Collider** and at least one **Rigidbody**.
    *   Detect with: `void OnCollisionEnter(Collision collision) { ... }`

## Beginner Tips

1.  **Use Prefabs**: distinct templates for reusable objects (like Enemies or Bullets).
2.  **Start Small**: Build a simple prototype loop before a full game.
3.  **Leverage Community**: Check forums or the Asset Store before building complex systems from scratch.


---

References

[1] Hugo Dolan, "The Ultimate Beginners Guide To Game Development In Unity", March 21, 2019, [freecodecamp](https://www.freecodecamp.org/news/the-ultimate-beginners-guide-to-game-development-in-unity-f9bfe972c2b5/)

[2] Brian Moakley, "Unity for Beginners", https://www.kodeco.com/gametech/paths/learn