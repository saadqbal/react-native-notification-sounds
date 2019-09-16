import {NativeModules, Platform} from 'react-native';

const {NotificationSounds} = NativeModules;

export default NotificationSounds;

export const playSampleSound = soundObject => {
  const sound = Platform.OS === 'ios' ? soundObject.soundID : soundObject.url;
  NotificationSounds.playSample(sound);
};
