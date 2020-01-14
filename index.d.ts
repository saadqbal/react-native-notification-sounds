declare module 'react-native-notification-sounds' {
  interface Sound {
    soundID: number
    url: string
    title: string
  }

  export function playSampleSound(s: Sound): void

  type NotificationSounds = { getNotifications(): Promise<Sound[]> }
  export default NotificationSounds
}
