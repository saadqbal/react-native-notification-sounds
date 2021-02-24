declare module 'react-native-notification-sounds' {
  export interface Sound {
    soundID: string
    url: string
    title: string
  }

  export function playSampleSound(s: Sound): void
  export function stopSampleSound(): void
  
  type TNotificationSounds = { getNotifications(type: string): Promise<Sound[]> };
  const NotificationSounds: TNotificationSounds;
  export default NotificationSounds
}
