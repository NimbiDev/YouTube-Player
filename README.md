![Github top language](https://img.shields.io/github/languages/top/NimbiDev/YouTube-Player?style=plastic)
![Github issues](https://img.shields.io/github/issues/NimbiDev/.github?style=plastic)
![GitHub forks](https://img.shields.io/github/forks/NimbiDev/YouTube-Player?style=plastic)
![GitHub stars](https://img.shields.io/github/stars/NimbiDev/YouTube-Player?style=plastic)
![GitHub license](https://img.shields.io/github/license/NimbiDev/YouTube-Player?style=plastic)
---


<h1 align="center">YouTube Player</h1>

### Supported Platforms

 - **MacOS**
 - **Windows**
 - **Linux**
 
### Dependencies

 - **NodeJS**: `v16.15.1`

### Instructions

**Windows**:

---

1. Download the `YouTubePlayer-setup.exe` file from the latest release.
2. Double click the `YouTubePlayer-setup.exe` file to run the setup.
3. 

 - **If NodeJS is installed**: The setup will auto compile the application into the `%SystemDrive%\Apps\YouTube Player` directory. from there simply wait for it to finish compiling and then double-click the shortcut to run the application. 

 - **If NodeJS is NOT installed**: The setup will open your browser to the official download page for NodeJS and automatically download the required NodeJS version for you. From ther run the NodeJS installer and once finished run the `YouTubePlayer-setup.exe` file again. Once it finishes compiling your app simply double-click the shortcut to run the application.
 
---

**Other Platforms**:

---

1. Download this repo.
2. Open the internal `/src` folder in your Terminal.
3. Run `yarn install` to install the dependencies.
4. Then run `yarn package`to package the application.
5. Check the internal `/src/out` folder for the packaged application to run.

---


### Notes

 - The Windows installer creates a shortcut to a `app.vbs` file that runs the compiled **YouTube** app. This is used for debug logging to help with any errors that people may or may not have. *This shortcut gets created regardless of whether the app is compiled or not*. To avoid confusion, make sure that the required version of **NodeJS** is installed ***before*** running the `YouTubePlayer-setup.exe`.

---

🧑‍⚖️ This is an unofficial application and not published or supported by YouTube or Google llc. Intended for personal and educational purposes. I am liable for nothing.
