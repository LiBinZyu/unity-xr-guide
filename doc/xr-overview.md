# XR Technology Overview

XR (Extended Reality) technology is the collective term for virtual reality, augmented reality, and mixed reality.

## Landscape

As we transition from the two-dimensional interfaces of the current webpage toward spatial computing, understanding the terminology and technological underpinnings of immersive environments is essential for students. The collective term for these technologies is Extended Reality (XR), an umbrella designation that encompasses Augmented Reality (AR), Virtual Reality (VR), and Mixed Reality (MR). While often used interchangeably in casual discourse, these distinct technologies represent specific points on the Reality-Virtuality Continuum, a framework that illustrates how reality transitions into virtual space.

XR serves as the foundational interface for the Metaverse, which is widely considered the next generation of the Internet. Unlike a simple video game, the Metaverse is a persistent, shared, and super virtual reality ecosystem supported by cross-disciplinary technologies including blockchain, AI, computer vision, and the Internet of Things (IoT).

## VR, AR, and MR

To navigate this field, one must distinguish between the varying levels of immersion and interaction provided by different XR modalities.

**Virtual Reality (VR)** creates a fully simulated environment that replaces the user's physical surroundings. By utilizing specialized hardware such as Head-Mounted Displays (HMDs), VR isolates the user from the real world, immersing them in a computer-generated 3D space. While early iterations focused on gaming, modern VR is evolving to support complex social interactions and telepresence, aiming to shorten the psychological distance between physically remote users. High-fidelity VR relies on advanced rendering, six degrees of freedom (DoF) motion tracking, and volumetric capture to create believable experiences.

**Augmented Reality (AR)**, conversely, does not replace the physical world but enhances it. AR technologies overlay computer-generated imagery (CGI), such as text, video, or GPS data, onto the user's view of the real environment. This is most commonly experienced through smartphones or tablets, where the device's camera captures the real world and the screen displays the composite image. A key limitation of standard AR is that while it superimposes digital content, it often uses the real world merely as a static backdrop without deep spatial understanding or interaction.

**Mixed Reality (MR)** represents the convergence of the physical and virtual worlds. Unlike simple AR overlays, MR (sometimes called hybrid reality) anchors virtual objects to the real world, allowing for real-time interaction between physical and digital elements. MR devices constantly scan and interpret the physical environment, enabling digital content to interact with real-world structures—a capability essential for advanced industrial and medical applications where precise integration is required.

![](_media/overview-1.png)

## The Role of XR in the Metaverse

The Metaverse is a shift in how humans socialize, work, and learn. The reliance on 2D learning environments like standard video conferencing has revealed significant limitations, such as a low sense of self-presence and user passivity, which XR seeks to resolve through immersive spatial environments.

In the healthcare sector, XR is revolutionizing medical training and execution. Surgeons utilize MR and VR to create smart digital operating rooms, allowing them to view patient procedures or visualize 3D tissue data with high precision. Technologies like "Medivis" enable physicians to increase surgical accuracy by visualizing internal anatomy in 3D space, moving beyond the constraints of traditional 2D medical imaging.

![Magic Leap AR](_media/Magic-Leap-2-Augmented-Reality-Healthcare.jpg ':size=50%')

<p class="caption">Magic Leap, Youtube, 2024.</p>

![Magic Leap Surgery](_media/Magic-Leap-2-Surgery.jpg)


<p class="caption">Magic Leap (@magicleap), X, 2023.</p>


Commercially, the Metaverse facilitates a digital economy where users can transact commodities using blockchain and Non-Fungible Tokens (NFTs). Retailers are leveraging AR to allow customers to visualize products, such as furniture or vehicles, in their own physical space before purchase. This "try-before-you-buy" model exemplifies how immersive tech is bridging the gap between digital marketing and physical reality.

![](_media/kivicubeBV.jpg)

<p class="caption">
    AR virtual shoe‑try‑on experience on the Bottega Veneta WeChat mini‑program, powered by KivuCube’s AR technology.<br>
    Source: KivuCube, “Bottega Veneta AR Virtual Shoe Try‑on Case,” KivuCube Blog, August 18, 2023
  </p>

VR-based teleoperation of robotic arms and robots focus on immersive control in hazardous environments such as space or industrial sites. Existing applications include rope-driven flexible arms for orbital tasks with VR hand controllers, obstacle avoidance, and precise manipulation in confined spaces; robotic-arm systems with stereo cameras for mixed reality telecollaboration, allowing head tracked viewpoint control for *pick and place* tasks; and dual-mode architectures (VR indirect setup plus direct teleop) for safe industrial grasping, often using devices like Meta Quest 2 or HoloLens integrated with computer vision. 

Ongoing challenges being tackled involve network latency causing precision loss in high-speed operations (addressed via 5G/edge computing), limited viewpoints in traditional video feeds (improved by dynamic VR head-tracked perspectives, though field-of-view expansion is needed), and seamless mode-switching from coarse navigation to fine gripping, with techniques like redirected walking emphasized in IEEE VR proceedings. For XR undergrads, starting with Unity or ROS simulations of VR-handled open-source arms like Fetch is recommended to experiment hands-on.

![](_media/teleoperation.png)

<p class="caption">
    User is teleoperating The 1X Neo using headset, it is one of the first humanoid robots.<br>
    The Wall Street Journal, Youtube, 2025
</p>

## Devices: From Headsets to Spatial Computers

Understanding the hardware landscape is crucial for developers, as the capabilities of the device dictate the design of the experience.

### The Classics: Pioneers of Immersion
These devices laid the groundwork for today's industry but faced limitations in mobility or interaction.
*   **Google Cardboard & Gear VR:** These mobile-based viewers introduced millions to VR. They offered a **3DoF** (3-Degrees-of-Freedom) experience, allowing users to look around but not move through space. While accessible, they often caused motion sickness due to latency and lack of positional tracking.

    ![](_media/google-cardboard.jpg)

    <p class="caption">
        Google Cardboard.<br>
        Source: “Google Cardboard,” Google, 2016
    </p>


*   **Google Glass:** One of the first consumer AR devices, featuring a monocular HUD (Heads-Up Display). It highlighted both the potential of information overlay and the social challenges of wearable cameras.

    ![](_media/Google_Glass_wikipedia.jpg)

    <p class="caption">
        Google Glass.<br>
        Source: “Google Glass,” Wikipedia, 2026
    </p>

### The 6DoF Room-Scale VR
With the introduction of **6DoF** (6-Degrees-of-Freedom) tracking, users could physically walk around and interact with virtual objects using hand controllers.
*   **Oculus Rift & HTC Vive:** These PC-tethered headsets set the standard for high-fidelity VR gaming and simulation, requiring powerful computers and external sensors ("Lighthouses").

    ![](_media/htc-vive-vs-oculus-rift.jpg)

    <p class="caption">
        HTC Vive vs Oculus Rift.<br>
        Source: “HTC Vive vs Oculus Rift,” Hydronic & Steam Equipment Co., Inc. 2026
    </p>

> **Degrees of Freedom (DoF)**
>
> *   **3DoF (3-Degrees-of-Freedom):** Tracks rotational movement only (Pitch, Yaw, Roll). Users can look around like sitting in a swivel chair but cannot physically move their body through the virtual space.
> *   **6DoF (6-Degrees-of-Freedom):** Tracks both rotation and position (X, Y, Z). Users can walk, lean, and crouch, allowing for full interaction with the 3D world.
> 
> ![](_media/dof.jpg)
> 
> <p class="caption">
>     3DoF vs 6DoF.<br>
>     Source: “Degrees of Freedom,” Wikipedia, 2026
> </p>

### The Modern Standard: Standalone Mixed Reality
Today's dominant platform for development is the standalone headset, which processes everything on-board without wires.
*   **Meta Quest 3 / 3S:** Currently the market leader. These devices combine high-resolution VR with color **Passthrough** cameras, enabling Mixed Reality (MR) where virtual objects interact with the physical room. The Quest 3S ($299) democratizes this technology for mass adoption.

    ![](_media/quest-3s-vs-3.jpg)

    <p class="caption">
        Left: Meta Quest 3S Headset, Right: Meta Quest 3 Headset.<br>
        Source: “Meta Quest 3S and Meta Quest 3,” Meta, 2025
    </p>

*   **Apple Vision Pro:** A premium "Spatial Computer" that emphasizes eye-tracking and hand gestures for interaction, pushing the boundaries of display resolution and pass-through quality.

    ![](_media/Apple-WWCD23-Vision-Pro-multitasking-230605.jpg)

    <p class="caption">
        Apple Vision Pro multitasking.<br>
        Source: Apple Vision Pro WWDC 2023, Apple, 2023
    </p>

### Emerging Form Factors (2025+)
The future points toward lightweight, all-day wearables integrating AI.
*   **XREAL Air 2 Ultra:** AR glasses that project a massive virtual screen (154") for productivity and media, prioritizing portability over full immersion.

    ![](_media/xrealair2ultra.jpg)

    <p class="caption">
        XREAL Air 2 Ultra.<br>
        Source: “XREAL Air 2 Ultra,” XREAL, 2025
    </p>

*   **Meta Orion:** A prototype for true holographic AR glasses with a wide field of view and neural wristband control, representing the next leap in display technology.

    ![](_media/metaorion.jpg)

    <p class="caption">
       Meta's AR glasses moonshot, Orion, has its own neural input wristband.<br>
    Celso Bulgatti/CNET, 2024
    </p>

*   **Ray-Ban Meta Smart Glasses:** Audio-first wearables without displays that use multimodal AI to capture and analyze the world around the user.

## Technical and Ethical Challenges

Despite the potential, widespread adoption of XR and the Metaverse faces significant hurdles.

**Infrastructure and Latency:** A truly immersive Metaverse requires real-time data synchronization on a massive scale. High latency (lag) breaks the illusion of presence and can cause "immersion sickness" if it exceeds 20 milliseconds. Consequently, the rollout of 5G networks and edge computing is critical to handle the heavy computational loads required for rendering high-fidelity graphics on mobile XR devices.

**Hardware Constraints:** Current XR devices face a trade-off between power and portability. Standalone headsets offer freedom of movement but have limited processing power compared to tethered PC systems. Furthermore, to achieve social acceptance, HMDs must become lightweight and comfortable for extended use, overcoming issues related to bulk and battery life.

**Ethics and Privacy:** As the Metaverse captures intimate biometric data—potentially including gaze tracking and brain-computer interface (BCI) signals—privacy concerns are paramount. The immersive nature of these platforms also introduces new ethical dilemmas regarding identity theft, the spread of misinformation, and the regulation of user behavior in virtual spaces. There is currently a lack of unified moral rules or legislation to govern these decentralized virtual societies.

**Health Implications:** The phenomenon of "cyber-syndrome," a physical and mental condition stemming from excessive internet immersion, may be exacerbated by the blurring lines between the real and virtual worlds. Designers must prioritize ergonomic software design to minimize cognitive load and physical discomfort.

## Future Outlook

The trajectory of XR points toward a future where the distinction between the physical and digital becomes increasingly porous. By 2030, advancements in Brain-Computer Interfaces (BCIs) and haptic technology could allow for the tracking and sharing of human memories and sensory experiences. As major technology firms invest billions in developing the infrastructure for these "Microverses," the ultimate goal remains a decentralized, interoperable ecosystem where users can move seamlessly between virtual worlds, carrying their digital assets and identities with them.

---

References

[1] Dileep Kumar Murala; Sandeep Kumar Panda, "The Role of Immersive Reality (AR/VR/MR/XR) in Metaverse," in Metaverse and Immersive Technologies: An Introduction to Industrial, Business and Social Applications , Wiley, 2023, pp.159-189, doi: https://doi.org/10.1002/9781394177165.ch6

[2] Meta, "What's the difference between AR, VR and MR?", Feb 14 2024, https://forwork.meta.com/blog/difference-between-vr-ar-and-mr/


