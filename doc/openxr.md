# Open XR

The architecture that makes standardized XR development possible is: [**OpenXR**](https://openxr-tutorial.com//android/vulkan/1-introduction.html#introduction).

Understanding this architecture is critical for both designer and developer. It explains why Unity is set up the way it is, how your code talks to the hardware, and what interaction standards (like Hand Tracking). Before writing a single line of code, you must understand the three layers of the XR technology stack.

## The Standard: OpenXR

In the early days of VR (2016-2019), every headset (Oculus, HTC, Windows MR) spoke a different language. If you wanted to support three headsets, you wrote three versions of your input code.

OpenXR was created to solve this. It is an open, royalty-free standard (managed by [Khronos Group](https://www.khronos.org/about/)) that acts as a universal language for XR. Think of it like USB. You don't install a specific driver for every mouse you buy; the OS knows how to talk to a "USB Mouse." Similarly, OpenXR allows your game to talk to "an XR Controller" without knowing if it's a Quest 3 or a Vive. OpenXR forces developers to stop thinking about Hardware (e.g., "Did the user press the 'A' button?") and start thinking about Actions (e.g., "Did the user signal 'Jump'?").

![](https://openxr-tutorial.com//android/vulkan/_images/OpenXRBeforeAfter.png)

<p class="caption">
Source: khronos.org, 2026.
</p>

### The Bridge: Unity XR Plug-in Management

Unity does not talk to the hardware directly. It uses a system called XR Plug-in Management to act as a bridge.

What it is: A mediator that loads the correct "Loader" at runtime.

This separation ensures your project remains clean. You build for OpenXR, and Unity handles the negotiation with the specific device.

### The Toolkit: Meta XR SDK vs. Unity XRI

Once the connection is established, you need tools to build interactions such as grabbing, throwing, UI. You have two main choices:

1. Unity XR Interaction Toolkit (XRI): The generalist. It is pure OpenXR. It works on every headset equally well but lacks some specific polish.
2. Meta XR SDK : The specialist. It is built on OpenXR but includes Meta's proprietary algorithms for complex tasks (like "Synthetic Hands" or "Poke" physics).

Recommendation: For this course, we focus on the Design Principles shared by both, especially the Meta XR SDK.

## Input Design Principles

Because OpenXR is Action-Based, we do not map code to buttons; we map Intent to Physical Inputs. The interaction techniques mentioned below have complete example in the SDK, and you **could use it right away** and test by opening example scene without complicated development or setups in Unity. 


| ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457327720_1829810434210275_4301378240918510250_n.png?_nc_cat=105&ccb=1-7&_nc_sid=e280be&_nc_ohc=UnkwsRLhoe4Q7kNvwFc8yeV&_nc_oc=Adm6Win2efmxT6WB3V7O2-njwtZRr90Tgibf6Az2Ndh_i9Cx5v_ImQDk5m5Tciv9rgc&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AfvXLWMbVGwHaX2QxsEwaKF_oVgt-PMbYnCkZ16P96gpFA&oe=69A4B465) | ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457456439_1829810424210276_6277664003462811256_n.png?_nc_cat=105&ccb=1-7&_nc_sid=e280be&_nc_ohc=ptEuQpwejP0Q7kNvwHZI6qY&_nc_oc=Adm1mK-IakwZ-03NQYuIX9tflHv3i3V9DOwxdHiII5E4OKnMKL3aVgbBpxmYaIylfck&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AftXHO6RgoBwG-KagvoXKf3RfLM9yJkGaNXHO1fG3ElvIw&oe=69A4AC00) | ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457698718_1829810437543608_992035281826869932_n.png?_nc_cat=106&ccb=1-7&_nc_sid=e280be&_nc_ohc=mkRTHgyWSdgQ7kNvwHIKjWg&_nc_oc=AdlaWFccMem8vY0pgTdRdco4-WYlYzfjAze7mgsSDHNftHehK2KJm67KRYCa3MlHdn0&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AfvpERNhhwlQpo3OBthrvl5MylUdibKyzCiTHGaLcT2tYg&oe=69A4D849)| ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457379811_1829810454210273_5433039417621986623_n.png?_nc_cat=110&ccb=1-7&_nc_sid=e280be&_nc_ohc=k1MYlEIvtU0Q7kNvwHz3y__&_nc_oc=Adl20iZ6cjPoGUbTMV5P-pc18cotLJE_GqkhONjTiIQbuL535xHLyoq_5z75o1u1IXU&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AfsMt_uxKqQ0OZsyLqsIhgHK3yiHTEnk1Og9Fo9TwR_RDg&oe=69A4B765)|
| :---: | :---: | :---: | :---: |
| ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457634190_1829810427543609_1230776002167727748_n.png?_nc_cat=107&ccb=1-7&_nc_sid=e280be&_nc_ohc=3bYxdd6vbH0Q7kNvwECqrSN&_nc_oc=Adn44BFBlCLwzQcwLhXh9EmTCVgwSop2HmSWF3SgvVutx-JiZoOcA6nvQ0j561iz4Q0&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AfuhoB2oOdcMWvNE9tgm5OaOEdC0S01Pl-meOOec1VgE6w&oe=69A4DBAB) | ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457520971_1829810450876940_5113530632317507384_n.png?_nc_cat=100&ccb=1-7&_nc_sid=e280be&_nc_ohc=_XCMzJsNDmIQ7kNvwEgN3-F&_nc_oc=Adn7v4syOqzDLRZ7tML2GUoe8yNXzPOa8cDVCoAnGqivwj4yjVe3w11zo-ZzhEWm55M&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_Afu8jmKX9GmXt01dABPNmO2DTdLdZvBA0xXv_Kyd2Vi3TA&oe=69A4D2E3) | ![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457663330_1829810420876943_812468459104226172_n.png?_nc_cat=107&ccb=1-7&_nc_sid=e280be&_nc_ohc=ND0EzHhTDm8Q7kNvwGSjHAi&_nc_oc=AdkYnWD_9tfUf27qliQT490ivwxVo8XbiadZsLZFAZOyTY6UwmE4i8-YdcbqzK67wqI&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_Afs7cCfm5Oq1h05dRdnx35feTzy0mI0pVrtNr-CiKHTf7w&oe=69A4C931)|![](https://scontent.fyto3-1.fna.fbcdn.net/v/t39.2365-6/457507888_1829810430876942_1598171900021828563_n.png?_nc_cat=106&ccb=1-7&_nc_sid=e280be&_nc_ohc=F7y6OYT0ddwQ7kNvwHCpSfC&_nc_oc=Adk1uUUgukFyk41Zs29_p5O_okWgoOL9qHf_EPd12f17ia6mf9ilC-Uv92CBw4pQxDs&_nc_zt=14&_nc_ht=scontent.fyto3-1.fna&_nc_gid=HtjykdxhBBI19o147bjMAQ&oh=00_AfsUYp9TIBg-gFV_MvfHN-gRxICg1_jdcUmGD-mEvrFYYQ&oe=69A4BFAC) |

Grip vs. Trigger is the most common mistake in student projects. You must respect the physiological mapping of the human hand.

| Component | Finger | Physiological Role | XR Design Intent |
| :---- | :---- | :---- | :---- |
| **Grip Button** | Middle/Ring/Pinky | **Holding / Stabilizing** | Used for **"Grabbing"** objects, climbing, or holding a gun. |
| **Trigger** | Index Finger | **Precise** Activation | Used for **"Selecting"**, shooting, clicking UI, or painting. |

* **Bad Design:** Holding a gun by pressing the Trigger. (You can't shoot if your trigger finger is busy holding the weapon).  
* **Good Design:** Hold the gun with Grip; shoot with Trigger.

When configuring Unity's Input System, use this reference to map OpenXR paths to logical actions. More detail about the Controller mapping is [**here**](https://developers.meta.com/horizon/design/controllers/).

In modern XR, there are more distinct ways to interact with the world. Your application should likely support them with the help of Meta XR SDK.


![](https://scontent-lax7-1.xx.fbcdn.net/v/t39.2365-6/565178415_3718434001643759_8099196198322599962_n.png?_nc_cat=105&ccb=1-7&_nc_sid=e280be&_nc_ohc=Dx2KOxwWE2gQ7kNvwFwAjKX&_nc_oc=Adkf0t7LQW5-t2tme0vpv4IsiOdPtXuGdhuHrK4kDyZknyXGqmiNRweH2DIS2UkiKZg&_nc_zt=14&_nc_ht=scontent-lax7-1.xx&_nc_gid=sBzj7JqQxTsrKFJWFiuzAw&oh=00_AfvHp0TRVs2PON9cpAPTVWts0DW0pQGurN-XQQyq77KksQ&oe=69A48639)

<p class="caption">
Some recommendations for mapping controller interactions to hands<br>
Source: developers.meta.com, 2026.
</p>


### **Ray Interaction ("The Laser Pointer")**

* **Concept:** A ray cast from the controller (or palm) to distant objects.  
* **Use Case:** Selecting UI elements that are out of reach, or teleporting.  
* **Visual Language:**  
  * **Straight Line:** For pointing at UI.  
  * **Bezier Curve (Parabola):** For teleportation (to indicate gravity and landing spots).

### **Direct Interaction ("The Physical Hand")**

* **Concept:** The user reaches out and touches the object.  
* **Use Case:** Picking up cups, opening doors, pulling levers.  
* **Presence:** This builds the strongest immersion. It relies on the **Grip Button**.  
* **Snap Zones:** Good design often uses "Snap Zones" (sockets) so when the user drops an object (like a magazine into a gun), it snaps perfectly into place.

### **Poke Interaction ("The Touchscreen")**

* **Concept:** Using the index finger to physically push a 3D button.  
* **Use Case:** Near-field UI (floating keyboards, holographic control panels).  
* **Why it's distinct:** Ray interaction feels like a remote control; Poke interaction feels like a touchscreen. It requires **Audio** and **Haptic** feedback to feel real, since there is no physical resistance in thin air.

The input modalities elaboration see [**here**](https://developers.meta.com/horizon/design/interactions-input-modalities/).

---


See more:

- [ISDK overview](https://developers.meta.com/horizon/documentation/unity/unity-isdk-interaction-sdk-overview/)
- [ISDK getting started](https://developers.meta.com/horizon/documentation/unity/unity-isdk-getting-started/)
- [Comprehensive Interaction Rig](https://developers.meta.com/horizon/documentation/unity/unity-isdk-cameraless-rig/)
- [Quick actions](https://developers.meta.com/horizon/documentation/unity/unity-isdk-quick-actions/)
- [Grabbing objects](https://developers.meta.com/horizon/documentation/unity/unity-isdk-grabbing-objects/)
- [Ray interaction](https://developers.meta.com/horizon/documentation/unity/unity-isdk-ray-interaction/)
- [Poke interaction](https://developers.meta.com/horizon/documentation/unity/unity-isdk-poke-interaction/)
- [Locomotion interactions](https://developers.meta.com/horizon/documentation/unity/unity-isdk-locomotion-interactions/)
- [Custom Hand Models](https://developers.meta.com/horizon/documentation/unity/unity-isdk-customize-hand-model/)
- [Detecting poses](https://developers.meta.com/horizon/documentation/unity/unity-isdk-detecting-poses/)
- [Create Ghost Reticles](https://developers.meta.com/horizon/documentation/unity/unity-isdk-create-ghost-reticles/)
- [ISDK example scenes](https://developers.meta.com/horizon/documentation/unity/unity-isdk-example-scenes/#distancegrabexamples/)
