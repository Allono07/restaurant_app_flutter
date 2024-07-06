package com.example.restaurant_app_flutter

import android.os.Bundle
import android.os.PersistableBundle
import com.netcore.android.smartechpush.SmartPush
import com.netcore.android.smartechpush.pnpermission.SMTNotificationPermissionCallback
import com.netcore.android.smartechpush.pnpermission.SMTPNPermissionConstants
import io.flutter.embedding.android.FlutterActivity
import java.lang.ref.WeakReference

class MainActivity: FlutterActivity(){
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

//Pass the below callback if your app require notification permission granted status else pass null

      val notificationPermissionCallback = object : SMTNotificationPermissionCallback {
            override fun notificationPermissionStatus(status: Int) {
                if(status == SMTPNPermissionConstants.SMT_PN_PERMISSION_GRANTED){
                    SmartPush.getInstance(WeakReference(context)).updateNotificationPermission(SMTPNPermissionConstants.SMT_PN_PERMISSION_GRANTED)
                    //Handle the status if needed
                } else {
                    //Handle the status if needed
                }
            }

        }
        SmartPush.getInstance(WeakReference(context)).requestNotificationPermission(notificationPermissionCallback ?: null)

    }}
