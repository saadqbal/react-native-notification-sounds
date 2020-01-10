declare module 'react-native-notification-sounds' {
  interface Sound {
    soundID: string
    url: string
    title: string
  }

  export function playSampleSound(s: Sound): void
 
  export default function getNotifications(): Promise<Sound[]>
}
