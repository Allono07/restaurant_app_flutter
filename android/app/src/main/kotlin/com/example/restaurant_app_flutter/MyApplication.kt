package com.example.restaurant_app_flutter
import android.content.ContentValues.TAG
import android.content.IntentFilter
import android.util.Log
import com.google.android.gms.tasks.Task
import com.google.firebase.FirebaseApp
import com.google.firebase.messaging.FirebaseMessaging
import com.netcore.android.Smartech
import com.netcore.android.smartechpush.SmartPush
import com.netcore.smartech_base.SmartechBasePlugin
import com.netcore.smartech_push.SmartechPushPlugin
import com.netcore.smartech_push.SmartechPushPlugin.Companion.context
import com.webengage.sdk.android.LocationTrackingStrategy
import com.webengage.sdk.android.WebEngage
import com.webengage.sdk.android.WebEngageConfig
//import com.webengage.webengage_plugin.WebengageInitializer
import io.flutter.app.FlutterApplication
import java.lang.ref.WeakReference
import com.example.restaurant_app_flutter.MyFirebaseMessagingService

class MyApplication : FlutterApplication(){
    override fun onCreate() {
        super.onCreate()
        val acre = MyFirebaseMessagingService()
        acre.printString();
        FirebaseApp.initializeApp(this)
        val webEngageConfig = WebEngageConfig.Builder()
            .setWebEngageKey("YOUR_LICENCSE_CODE")
            .setAutoGCMRegistrationFlag(false)
            .setLocationTrackingStrategy(LocationTrackingStrategy.ACCURACY_BEST)
            .setDebugMode(true) // only in development mode
            .build()
  //      WebengageInitializer.initialize(this, webEngageConfig)


        FirebaseMessaging.getInstance().token.addOnCompleteListener { task: Task<String?> ->
            try {
                val token = task.result
                WebEngage.get().setRegistrationID(token)
            } catch (e: java.lang.Exception) {
                e.printStackTrace()
            }
        }
        // Initialize Smartech Sdk
        Smartech.getInstance(WeakReference(applicationContext)).initializeSdk(this)
        // Add the below line for debugging logs
        Smartech.getInstance(WeakReference(applicationContext)).setDebugLevel(9)
        // Add the below line to track app install and update by smartech
        Smartech.getInstance(WeakReference(applicationContext)).trackAppInstallUpdateBySmartech()

        // Initialize Flutter Smartech Base Plugin
        SmartechBasePlugin.initializePlugin(this)

        SmartechPushPlugin.initializePlugin(this)

        try {
            val smartPush = SmartPush.getInstance(WeakReference(context))
            smartPush.fetchAlreadyGeneratedTokenFromFCM()
        } catch (e: Exception) {
            Log.e(TAG, "Fetching FCM token failed.")
        }
        val deeplinkReceiver = DeeplinkReceiver()
        val filter = IntentFilter("com.smartech.EVENT_PN_INBOX_CLICK")
        context.registerReceiver(deeplinkReceiver, filter)

//        val deeplinkReceiver = DeeplinkReceiver()
//        val filter = IntentFilter("com.smartech.EVENT_PN_INBOX_CLICK")
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
//            context.registerReceiver(deeplinkReceiver, filter, RECEIVER_EXPORTED)
//        } else {
//            context.registerReceiver(deeplinkReceiver, filter)
//        }

    }

    override fun onTerminate() {
        super.onTerminate()
        Log.d("onTerminate", "onTerminate")
    }
}