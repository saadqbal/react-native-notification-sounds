
package com.reactlibrarynotificationsounds;

import android.database.Cursor;
import android.media.RingtoneManager;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.util.HashMap;
import java.util.Map;

public class RNNotificationSoundsModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNNotificationSoundsModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNNotificationSounds";
  }


  @ReactMethod
  public Map<String, String> getNotifications() {
    RingtoneManager manager = new RingtoneManager(this.reactContext);
    manager.setType(RingtoneManager.TYPE_NOTIFICATION);
    Cursor cursor = manager.getCursor();
    Map<String, String> list = new HashMap<>();
    while (cursor.moveToNext()) {
      String notificationTitle = cursor.getString(RingtoneManager.TITLE_COLUMN_INDEX);
      String notificationUri = cursor.getString(RingtoneManager.URI_COLUMN_INDEX);
      String id = cursor.getString(RingtoneManager.ID_COLUMN_INDEX);
      list.put(notificationTitle, notificationUri + "/" + id );
    }
    
    return list;
  }


}