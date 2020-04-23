# Physical Bullets In Second Life
A Reference for Best Practices in Collision Detection within Second Life.

**How Physics in SL Work:** 
The second life engine uses what's called "discrete collision detection" which is unique in that it uses frame rate to calculate it's physics. You may have heard something about "frames" mentioned by cool scripter kids in the past. In each frame the sim will calculate it's physics and generate a list of objects which are currently intersecting using GJK. The collision event will usually be generated on the next frame after the collision has actually taken place. This is why your bullets don't register kills when the sim is lagging to death, these collisions are occurring as the object moves at high speed between frames. Linden Labs attempts to overcome this flaw by representing "projectiles as arrows with invisible trailing tails longer than the gap in frames to collide with any object that might fit between the calculated frames.[Reference](https://en.wikipedia.org/wiki/Physics_engine)

**A Reference Image Regarding Physics in SL:**
![alt text](http://i.imgur.com/2IdhxvM.png "Performance Cost")

**Don't Use Mesh Bullets:**
Linden Labs chose DCD for SL because it's the simplest method collision detection. To check every face of every object would have a huge impact on performance especially with geometrically complex objects. This is why mesh is uploaded with a separate compound hitbox and does not use the actual object for physical interactions.[Reference](https://en.wikipedia.org/wiki/Collision_detection#A_posteriori_.28discrete.29_versus_a_priori_.28continuous.29)

**Prim Boxes:**
The Box is King when it comes to bullets for 3 reasons

1. It is the easiest primitive shape to render.
2. It has the fastest collision response time, which is the most important reason to use it over a Sphere or a Capsule.
3. The physics impact of a box does not change when it is scaled, unlike a sphere. Sphere's also have a much slower response time.


**Credit:**
Takkun Grey, for the initial writeup years ago.

Zantrua Lobo, for elaborating on this further.

Jeremy Duport, for contributing to the forum discussion.

Hadet Sonnenkern, that's me!
