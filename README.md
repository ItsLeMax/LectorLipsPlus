# LectorLipsPlus

Converts Character Animator mouth data files to Minecraft Blockbuster Mod NBT data files with several benefits
![1 0 0-lips](https://github.com/user-attachments/assets/c611866c-97c8-4dea-9337-b6ca68aa3c5f)

## Changes compared to the original LectorLips

- option to convert entire folders at once\
![1 0 0-folders](https://github.com/user-attachments/assets/6a145327-b157-44e5-b1e3-434e93915868)
- template project for `Adobe Character Animator` and therefore no necessaty to subscribe to `Adobe CC`\
![1 1 0-template](https://github.com/user-attachments/assets/c26714a6-5a8e-4833-85cd-daefe607ef22)
- premade assets
![1 0 0-assets](https://github.com/user-attachments/assets/321d3f17-24db-4a43-87f5-68375af8fdd7)
- [step-by-step guide](https://github.com/ItsLeMax/LectorLipsPlus?tab=readme-ov-file#setup) for easy use\
![1 0 0-readme](https://github.com/user-attachments/assets/c9090e9f-822f-4b7a-8116-28feb01e6c75)
- config file for one repetitive argument
![1 0 0-config](https://github.com/user-attachments/assets/055a7c25-c2d0-47c3-9003-68bb73eb7c85)
- clean folder structure\
![1 0 0-structure](https://github.com/user-attachments/assets/6877cc6b-169c-40f5-96e8-b890c819a0d9)

## Requirements

> ...that are necessary:
- [Adobe Character Animator](https://creativecloud.adobe.com/apps/download/character-animator) (instant download)
- [Python](https://www.python.org/downloads/)
> ...that have working alternatives:
- [Adobe Audition](https://www.adobe.com/de/creativecloud/plans.html)
- [7-Zip](https://7-zip.de/download.html)

## Setup

1. Download the source code by clicking on `<> Code` & `Download ZIP` and extract its content.\
![download](https://github.com/ItsLeMax/File-Mass-Renaming/assets/80857459/847b4ed1-b820-4479-8a0b-a48bcfe55108)
2. Copy the (renamable) `mouth` folder from `/assets/` somewhere into the blockbuster models folder with the basic path being `%appdata%\.minecraft\config\blockbuster\models`.
3. Open `settings.ini` inside `/run/` and write down the custom path from `step 2` after `b.a:`.
4. Open `Audition` with the audio file you want animations from (in this case one long raw recording that has multiple lines it it).
5. Remove unnecessary white space and bloopers.
6. Select every area to create animations from and press `M` to create markers.
7. Head to `File > Export > Audio within markers` (or similar).
8. Change export settings as needed, one of which being the path and click on `export`.
9. Open `Adobe Character Animator`, click on `Open project...` and choose the (copyable) `template.chproj` inside `/assets/adobe/template/`.
10. Inside the project: Click on each file inside the folder `illustrator`, go to `properties`, click on the `orange file path`, navigate to `/assets/adobe/illustrator/` and select the file with the same name as the one clicked on before.
11. Import the newly exported audio files.
12. *(required if you prefer detailed mouth animations as seen in `step 14`)* Click on each audio file and head to `properties` into the blank white box where you need to transcribe the spoken words into text using the `play button` above the blue file path as orientation.
13. Open the scenes fitting to the required emotion by double clicking them inside the `project` panel folder `scenes` and import the proper audio files into the timeline **next to each other**.
14. Select one timeline object each and you may click on `Timeline > Compute Lip Sync Take from Audio and Transcript` in the navigator above for detailed mouth animation. If you dislike the details and prefer a more basic comic style look or the generation fails as seen on their timeline markers you need to use `Timeline > Compute Lip Sync Take from Scene Audio`.
15. *(optional tweaking)* Adjust the recognized letters with purple background as needed by changing their length and letters using right click.
16. Right click each light purple lip sync layer and click on `Copy Visemes for After Effects`.
17. Create in a directory of your choice text files for each viseme copy according to its emotion, optimally with a recognizable name, paste the clipboard into each one and save the files.
18. Run `convert-folder.bat` or `convert-single.bat` inside `/run/`, enter the folder or file path of the text files created before and press enter.
19. Write down an emotion for the needed facial expression that matches with the name of the proper sub folder from `step 2` (by default either `positive`, `neutral` or `negative`).
20. Navigate to `/export/`, move the files inside to a desired location if needed and open each file you need mouth animation from.
21. Copy the entire content and head to Minecraft.
22. Pick a morph (mostly inside the aperture timeline where someone needs to speak), click on `Edit` and select `Body part` (the limb on the bottom right).
23. Click on `Add a new body part...` (the plus sign on the bottom left), choose `Head` on the right and click on `Pick`.
24. Right click into an empty area and press `Paste NBT`.
25. Choose the newly created animated mouth inside `Recent Morphs`.

## Credits to Chryfi

This project is a fork from [Chryfi](https://github.com/Chryfi/)'s [LectorLips](https://github.com/Chryfi/LectorLips). Feel free to leave some love. His work is awesome. ❤️
![LectorLipsLogo](https://github.com/user-attachments/assets/bba99c8f-8ad1-491c-a918-d70b8306cef6)