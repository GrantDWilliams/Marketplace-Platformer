# Marketplace Platformer

## Introduction
A project made in Unreal Engine 5.4. This was my first project I made from start to finish. It's not what I would consider a 'product', but as a personal project to learn UE5,
basic programming principles, apply basic game design, and be able to say "I made a thing," I would call it successful.

## The Goals
This project was conceived with the intent of getting familiar with the UE5 workflow without overcomplicating it. In that pursuit,
I was instructed to use markeplace assets to build it, and get experimental with lighting and mechanics. I used Blueprint for scripting since I'm a visual learner.

## The Outcome
To that end, I added as many free assets from the Unreal asset library as I could find and sifted through them afterward.
I found a pre-made kit of structural pieces that look both sci-fi and steampunk, so I tried using that. It didn't go too well,
since I didn't realize these were pieces of buildings meant to be used as exterior only set dressing. I qickly through that set away adn started over after a week.
I then looked through the assets again, hoping to find something more interior focused to keep the scale of the game down. I ended up finding the Modular Scifi pack for exactly that.

Now, a week into the porcess, and I got started on what would actually become the final project.
If memory serves, it took a little over a month at a few hours a day before I called it done. And what's the end result?
A 5 minute long platformer with spike pads, jump pads, and moving platforms with a visual style based on Control by Remedy Entertainment.

The lighting in particular, I'm quite proud of. It's not anything revolutionary, but I didn't want wall-mounted or overhead lights like an office building.
I took inspiration from Control, with its brutalistic aesthetic and alien lighting. In particular, I placed 2d planes as the ceiling, giving them an intense white glow that illuminates the map,
and becomes blindingly bright when looked at. This does leave an unintended side effect and a question, what happens below the player?
I decided to do the opposite, making it a black void, which when combined with platforming, makes for a creepy pit to fall into. The ceiling glow, however, illuminated it.

To fix the pit, and make it actually dark, I had two ideas. First was to make it deep enough to not be illuminated, and then put a hellish red light at the bottom,
but that seemed impractical and I wasn't sure it would look very good. The second? Add fog. Fog in UE5 is versatile. It can be made thin to provide a haze effect,
or it can be thickened until it's completely opaque. In this case, I wanted opaque. And with a little bit of tuning, despite being fairly close to the light source in the ceiling,
it would have a gradual cutoff into pure darkness.

After defining a fail state, I decided to add a death sequence. If the player falls into the pit, the camera cuts away to another camera attached to the wall of the chamber.
This camera oversees the entire chamber as a red light flahses intermittently before texting beings typing on-screen (seen below). The same occurs when a victory is achieved by reaching the end platform.
The other platforms disappear, the music and sound effect cease, and after a few seconds of creepy silence, the platform disappears, making the player fall into the pit as different text types on-screen.

## The Proof
I compiled a small list of screenshots and clips to show off the project.

### Credits
Created by Grant Williams\
Using assets from Modular Scifi Season 2 Starter Bundle by Jonathon Frederick\
Font: Minisystem by 1001Fonts\
Sounds Effects & Music from Pixabay\
