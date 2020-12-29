
# react-native-notification-sounds

# [Example Implementation](https://github.com/saadqbal/notificationSounds)


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
project(':react-native-notification-sounds').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-notification-sounds/android')
```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:

```
compile project(':react-native-notification-sounds')
```

## Usage

```javascript
import NotificationSounds, { playSampleSound } from  'react-native-notification-sounds';
/*
get the list of System notification sounds. This function returns an array the array contains Title, Url, SoundID
You can pass the following values to the getNotifications:
1. notification: get the list of notification sounds
2. ringtone: get the list of ringtones
3. alarm: get the list of alarm sounds (android only)
*/
NotificationSounds.getNotifications('notification').then(soundsList  => {
	console.warn('SOUNDS', JSON.stringify(soundsList));
	/*
	Play the notification sound.
	pass the complete sound object.
	This function can be used for playing the sample sound
	*/
	playSampleSound(soundsList[1]);
	// if you want to stop any playing sound just call:
	// stopSampleSound();
});
```

## :fire: Methods
|Name| Description |
|--|--|
| `playSampleSound(SoundItem)` | Plays the sound item returned by getNotifications(type) |
|`stopSampleSound()` | call this function to stop the current playing sound|
|`NotificationSounds.getNotifications(type)`| A promise which returns list of the system sounds filtered by the type. Type can have any of the (**notification**, **ringtone**, **alarm** (*android only*) ) values|

## :fire: Features

 
:white_check_mark: Get the list of system notification or ringtone sounds.\
:white_check_mark: Filter the sounds by notification, ringtone or alarm.\
:white_check_mark: Play the sound without installing any other library\
:white_check_mark: Stop the currently playing notification sound.

  
## Important Note

Unfortunately, this library WILL NOT return any files in the iOS simulator. You must run it on a real iOS device (iPhone, iPad, iPod Touch).

   

## 📄 License

  

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/saadqbal/react-native-notification-sounds/blob/master/LICENSE) file for details