
# react-native-notification-sounds

## Getting started

`$ npm install react-native-notification-sounds --save`

### Mostly automatic installation

`$ react-native link react-native-notification-sounds`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-notification-sounds` and add `RNNotificationSounds.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNotificationSounds.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNNotificationSoundsPackage;` to the imports at the top of the file
  - Add `new RNNotificationSoundsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-notification-sounds'
  	project(':react-native-notification-sounds').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-notification-sounds/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-notification-sounds')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNNotificationSounds.sln` in `node_modules/react-native-notification-sounds/windows/RNNotificationSounds.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Notification.Sounds.RNNotificationSounds;` to the usings at the top of the file
  - Add `new RNNotificationSoundsPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNNotificationSounds from 'react-native-notification-sounds';

// TODO: What to do with the module?
RNNotificationSounds;
```
  