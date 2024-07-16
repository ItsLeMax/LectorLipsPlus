# LectorLipsPlus
Converts multiple Character Animator mouth data files to Minecraft Blockbuster Mod NBT data at once

> [!NOTE]
> This fork is an edit that is based on personal preferences.

## Requirements
- Adobe Character Animator (Free `Starter` Version working aswell) from `creative cloud`\
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
9. Open `Adobe Character Animator`, click on `Open project...` and choose the (copyable) `template.chproj` inside `/assets/adobe/template/`
10. Inside the project: Click on each file inside the folder `illustrator`, go to `properties`, click on the `orange file path`, navigate to `/assets/adobe/illustrator/` and select the file with the same name as the one clicked on before
11. Import the newly exported audio files
12. *(required if you prefer detailed mouth animations as seen in step 14)* Click on each audio file and head to `properties` into the blank white box where you need to transcribe the spoken words into text using the `play button` above the blue file path as orientation
13. Open the scenes fitting to the required emotion by double clicking them inside the `project` panel folder `scenes` and import the proper audio files into the timeline **next to each other**.
14. Select one timeline object each and you may click on `Timeline > Compute Lip Sync Take from Audio and Transcript` in the navigator above for detailed mouth animation. If you dislike the details and prefer a more basic comic style look or the generation fails as seen on their timeline markers you need to use `Timeline > Compute Lip Sync Take from Scene Audio`.
15. *(optional tweaking)* Adjust the recognized letters with purple background as needed by changing their length and letters using right click
16. Right click each light purple lip sync layer and click on `Copy Visemes for After Effects`
17. Create folders somewhere matching with the names of the folders inside `/assets/mouth/`, by default `positive`, `neutral` and `negative` and inside them text files for each copy according to its emotion, optimally with a recognizable name, paste the clipboard into each one and save the files
18. Run `convert-folder.bat` inside `/run/` (or `convert-single.bat` if you'd like to convert a single file), enter the folder (or file) path of the text files created before and press enter
19. Navigate to `/export/` and open the file you need the mouth animation from
20. Copy the entire content and head to Minecraft
21. Pick a morph (mostly inside the aperture timeline where someone needs to speak), click on `Edit` and select `Body part` (the limb on the bottom right)
22. Click on `Add a new body part...` (the plus sign on the bottom left), choose `Head` on the right and click on `Pick`
23. Right click into an empty area and press `Paste NBT`
24. Choose the newly created animated mouth inside `Recent Morphs`

## Credits to Chryfi
This project is a fork from [Chrify's LectorLips](https://github.com/Chryfi/LectorLips). Feel free to leave some love. His work is awesome. ❤️