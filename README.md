# react-native-notification-sounds

## Getting started

`$ npm install react-native-notification-sounds --save`

### Mostly automatic installation

`$ react-native link react-native-notification-sounds`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-notification-sounds` and add `NotificationSounds.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libNotificationSounds.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.NotificationSoundsPackage;` to the imports at the top of the file
  - Add `new NotificationSoundsPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-notification-sounds'
  	project(':react-native-notification-sounds').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-notification-sounds/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-notification-sounds')
  	```


## Usage
```javascript
import NotificationSounds, { playSampleSound } from 'react-native-notification-sounds';
/* 
get the list of System notification sounds. This function returns an array
the array contains Title, Url, SoundID
*/
NotificationSounds.getNotifications().then(soundsList => {
    console.warn('SOUNDS', JSON.stringify(SoundsList));
    /* 
	Play the notification sound.
	pass the complete sound object.
    This function can be used for playing the sample sound
	*/
	playSampleSound(soundsList[1]);
});

```

## Important Note
Unfortunately, this library WILL NOT return any files in the iOS simulator. You must run it on a real iOS device (iPhone, iPad, iPod Touch).

