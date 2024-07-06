package com.example.restaurant_app_flutter

import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import com.netcore.android.smartechpush.SmartPush
import com.netcore.smartech_push.SmartechPushPlugin.Companion.context
import com.webengage.sdk.android.WebEngage
import org.json.JSONObject
import java.lang.ref.WeakReference

class MyFirebaseMessagingService : FirebaseMessagingService() {

    override fun onNewToken(token: String) {
        super.onNewToken(token)
        Log.d("TOKEN",token)
        WebEngage.get().setRegistrationID(token);
        print("the token is $token")
        SmartPush.getInstance(WeakReference(this)).setDevicePushToken(token)
    }

    override fun onMessageReceived(message: RemoteMessage) {
        super.onMessageReceived(message)
        val isPushFromSmartech:Boolean = SmartPush.getInstance(WeakReference(context)).isNotificationFromSmartech(
            JSONObject(message.data.toString())
        )
        if(isPushFromSmartech){
            SmartPush.getInstance(WeakReference(applicationContext)).handlePushNotification(message.data.toString())
        } else {
            message.notification?.title?.let { message.notification?.body?.let { it1 ->
                getFirebaseMessage(it,
                    it1
                )
            } }
            // Notification received from other souces
        }
    }
    private fun getFirebaseMessage(title: String, body: String) {
        val builder = NotificationCompat.Builder(this, "push")
            .setSmallIcon(R.drawable.common_google_signin_btn_icon_dark)
            .setContentTitle(title)
            .setContentText(body)
            .setAutoCancel(true)

        val managerCompat = NotificationManagerCompat.from(this)
        managerCompat.notify(102, builder.build())
    }


    fun printString(){
print("fastest car")
    }
}