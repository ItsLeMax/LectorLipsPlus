# LectorLipsPlus
Converts multiple Character Animator mouth data files to Minecraft Blockbuster Mod NBT data at once

> [!NOTE]
> This fork is an edit that is based on personal preferences.

## Requirements
- Adobe Character Animator `Pro` (**not** `Starter` as seen on the top right of the program when opened) from `creative cloud`\
(requires a [subscription](https://www.adobe.com/de/creativecloud/plans.html), cracks mostly do not work - trust me)
- Any capable Audio Editor (Audition in this guide)
- Python (executable [here](https://www.python.org/downloads/))

## Setup

> [!NOTE]
> File imports inside Adobe applications can usually be done with `drag 'n drop` or something similar to `File > Import` inside the top navigator\
> If any window mentioned is missing it can be activated somewhere inside `Window`

1. Download the source code by clicking on `<> Code` & `Download ZIP` and extract the content\
![download](https://github.com/ItsLeMax/File-Mass-Renaming/assets/80857459/847b4ed1-b820-4479-8a0b-a48bcfe55108)
2. Copy the (renamable) `mouth` folder from `/assets/` somewhere into the blockbuster models folder with the basic path being `%appdata%\.minecraft\config\blockbuster\models`
3. Open `settings.ini` inside `/run/` and write down the path from above after `b.a:`
4. Open `Audition` with the audio file you want animations from (in this case one long raw recording that has multiple lines it it)
5. Remove unnecessary white space and bloopers
6. Select every area to create animations from and press `M` to create markers
7. Head to `File > Export > Audio within markers` (or similar)
8. Change export settings as needed, one of which being the path and click on `export`
9. Open `Adobe Character Animator` and create a `new project...` with the proper button
10. Import all illustrator files from `/assets/illustrator/` into the `project` panel
11. Click on each illustrator file and on the `clapperboard` icon below (next to the folder and ai icon) so three scenes get created
12. Import the newly exported audio files
13. *(required if you prefer detailed mouth animations as seen in step 14)* Click on each audio file and head to `properties` into the blank white box where you need to transcribe the spoken words into text using the `play button` above the blue file path as orientation
14. Open the scenes created from the illustrator files by double clicking them inside the `project` panel and import the audio files that fit to the emotion of the scene name into the timeline **next to each other**.
15. Select one timeline object each and you may click on `Timeline > Compute Lip Sync Take from Audio and Transcript` in the navigator above for detailed mouth animation. If you dislike the details and prefer a more basic comic style look or the generation fails as seen on a new timeline marker above you need to use `Timeline > Compute Lip Sync Take from Scene Audio`.
16. *(optional)* Adjust the recognized letters with purple background as needed by changing their length and letters using right click
17. Right click each light purple lip sync layer and click on `Copy Visemes for After Effects`
18. Create folders somewhere matching with the names of the folders inside `/assets/mouth/`, by default `positive`, `neutral` and `negative` and inside them text files for each copy according to its emotion, optimally with a recognizable name, paste the clipboard into each one and save the files
19. Run `convert-folder.bat` inside `/run/` (or `convert-single.bat` if you'd like to convert a single file), enter the folder (or file) path of the text files created before and press enter
20. Navigate to `/export/` and open the file you need the mouth animation from
21. Copy the entire content and head to Minecraft
22. Pick a morph (mostly inside the aperture timeline where someone needs to speak), click on `Edit` and select `Body part` (the limb on the bottom right)
23. Click on `Add a new body part...` (the plus sign on the bottom left), choose `Head` on the right and click on `Pick`
24. Right click into an empty area and press `Paste NBT`
25. Choose the newly created animated mouth inside `Recent Morphs`

## Credits to Chryfi
This project is a fork from [Chrify's LectorLips](https://github.com/Chryfi/LectorLips). Feel free to leave some love. His work is awesome. ❤️