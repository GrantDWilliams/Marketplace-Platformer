# Marketplace Platformer

## Introduction
A project made in Unreal Engine 5.4. This was my first project I made from start to finish. It's not what I would consider a 'product', but as a personal project to learn UE5,
basic programming principles, apply basic game design, and be able to say "I made a thing," I would call it successful.

## The Goals
This project was conceived with the intent of getting familiar with the UE5 workflow without overcomplicating it. In that pursuit,
I was instructed to use marketplace assets to build it, and get experimental with lighting and mechanics. I used Blueprint for scripting since I'm a visual learner.

## The Outcome
To that end, I added as many free assets from the Unreal asset library as I could find and sifted through them afterward.
I found a pre-made kit of structural pieces that look both sci-fi and steampunk, so I tried using that. It didn't go too well,
since I didn't realize these were pieces of buildings meant to be used as exterior only set dressing. I quickly through that set away and started over after a week.
I then looked through the assets again, hoping to find something more interior focused to keep the scale of the game down. I ended up finding the [Modular Scifi](https://www.fab.com/listings/cb3c4494-4060-4a80-b079-e46936cb8dd0) pack for exactly that.

Now, a week into the process, and I got started on what would actually become the final project.
If memory serves, it took a little over a month at a few hours a day before I called it done. And what's the end result?
A 5 minute long platformer with spike pads, jump pads, and moving platforms with a visual style based on Control by Remedy Entertainment.

## Mechanics
Mechanics remained simple. Moving and jumping are the only inputs the player uses. The various pads are the real challenge.\
1. There's basic pads that do nothing but sit there. These typically act as safe points where the player can look around and plan their next move without fear of death.
<img width="757" height="487" alt="Screenshot_20260327_001940" src="https://github.com/user-attachments/assets/fc19b777-73b1-4784-8a6c-e1ca4e1d6d74" />

2. Next is moving pads. A step up in complexity, but still simple. serving mainly as the means to traverse the chamber from one challenge to the next. Denoted by their illuminated device beneath.
<img width="772" height="522" alt="Screenshot_20260327_000323" src="https://github.com/user-attachments/assets/71ecf99d-1af7-46b2-9dd9-fdc099daf0ce" />

3. Then comes the first interesting one, the jump pad. Technically not a platform, it propels the player a good height into the air on contact.
<img width="807" height="412" alt="Screenshot_20260327_000206" src="https://github.com/user-attachments/assets/6861bd5d-330b-4d56-9d99-936e16582c1a" />

4. After this is the rotating pad. Mainly for timing jumps, the rotating pad rotates 180 degrees on an axis before returning to its starting position. Denoted by illuminated devices on the top and bottom.
<img width="833" height="398" alt="Screenshot_20260327_000230" src="https://github.com/user-attachments/assets/568bf60a-4a4d-4fc0-b937-e7089185f3c3" />

5. And finally, we have the spike pad. This platform has rows of spikes that jut up from below in sequence. The spikes kill the player on contact.
<img width="814" height="452" alt="Screenshot_20260327_000248" src="https://github.com/user-attachments/assets/252842d0-6905-4bdc-9952-0986019aae0b" />


After all those, we have the checkpoint system. A simple light on a pole represents these points, where on entering their vicinity, they turn from red to green.\
<img width="454" height="485" alt="Screenshot_20260327_000346" src="https://github.com/user-attachments/assets/61ccc084-6cef-4b65-961d-baa6ea9d6d97" />

Green means that if the player dies, they restart at that checkpoint.\
<img width="405" height="439" alt="Screenshot_20260327_000602" src="https://github.com/user-attachments/assets/47981b42-b895-4fe4-99b9-0610e386efa2" />

## Visuals
The lighting in particular, I'm quite proud of. It's not anything revolutionary, but I didn't want wall-mounted or overhead lights like an office building.
I took inspiration from Control, with its brutalistic aesthetic and alien lighting. In particular, I placed 2d planes as the ceiling, giving them an intense white glow that illuminates the map,
and becomes blindingly bright when looked at.
<img width="1017" height="515" alt="Screenshot_20260327_002102" src="https://github.com/user-attachments/assets/f1c12c7d-0b64-431e-9e51-fd55c6ead8f2" />

This does leave an unintended side effect and a question, what happens below the player?
I decided to do the opposite, making it a black void, which when combined with platforming, makes for a creepy pit to fall into. The ceiling glow, however, illuminated it.

To fix the pit, and make it actually dark, I had two ideas. First was to make it deep enough to not be illuminated, and then put a hellish red light at the bottom,
but that seemed impractical and I wasn't sure it would look very good. The second? Add fog. Fog in UE5 is versatile. It can be made thin to provide a haze effect,
or it can be thickened until it's completely opaque. In this case, I wanted opaque. And with a little bit of tuning, despite being fairly close to the light source in the ceiling,
it would have a gradual cut-off into pure darkness.\
<img width="826" height="356" alt="Screenshot_20260327_002207" src="https://github.com/user-attachments/assets/236135c8-9781-42b9-8482-4571f866cd2e" />

## Victory & Death
After defining a fail state, I decided to add a death sequence. If the player falls into the pit, the camera cuts away to another camera attached to the wall of the chamber.
<img width="845" height="444" alt="Screenshot_20260327_000119" src="https://github.com/user-attachments/assets/2bbc1e35-e026-459e-86fb-668db89bf814" />

This camera oversees the entire chamber as a red light flashes intermittently before texting beings typing on-screen.\
<img width="755" height="248" alt="Screenshot_20260326_235255" src="https://github.com/user-attachments/assets/fb1bed18-7082-419f-b89f-389e2883e22d" />

The same occurs when a victory is achieved by reaching the end platform. The other platforms disappear, the music and sound effect cease, and after a few seconds of creepy silence, the platform disappears, making the player fall into the pit as different text types.
<img width="708" height="264" alt="Screenshot_20260326_235211" src="https://github.com/user-attachments/assets/e259c1b3-70f6-4bc5-b728-d5173dd93ff0" />


### Credits
Created by Grant Williams\
Assets from [Modular Scifi Season 2 Starter Bundle](https://www.fab.com/listings/cb3c4494-4060-4a80-b079-e46936cb8dd0) by Jonathon Frederick\
Font: [Minisystem](https://www.1001fonts.com/minisystem-font.html) by 1001Fonts\
Sounds Effects & Music from [Pixabay](https://pixabay.com/)
