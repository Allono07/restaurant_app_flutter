package com.example.restaurant_app_flutter

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.netcore.android.SMTBundleKeys

class DeeplinkReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        try {
            val bundleExtra = intent?.extras
            bundleExtra?.let {
                val deepLinkSource = it.getString(SMTBundleKeys.SMT_KEY_DEEPLINK_SOURCE)
                val deepLink = it.getString(SMTBundleKeys.SMT_KEY_DEEPLINK)
                val customPayload = it.getString(SMTBundleKeys.SMT_KEY_CUSTOM_PAYLOAD)
                if (deepLink != null && deepLink.isNotEmpty()) {
                    // handle deepLink for redirection. Here you can use deepLinkSource for redirection if required
                }
                if (customPayload != null && customPayload.isNotEmpty()) {
                    // handle your custom payload based on deeplink source like below if required
                }
            }
        } catch (t: Throwable) {
            Log.e("DeeplinkReceiver", "Error occurred in deeplink:${t.localizedMessage}")
        }
    }
}