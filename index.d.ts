declare module 'react-native-notification-sounds' {
  interface Sound {
    soundID: string
    url: string
    title: string
  }

  export function playSampleSound(s: Sound): void
  export function stopSampleSound(): void
  
  type NotificationSounds = { getNotifications(type: string): Promise<Sound[]> };
  export default NotificationSounds
}
