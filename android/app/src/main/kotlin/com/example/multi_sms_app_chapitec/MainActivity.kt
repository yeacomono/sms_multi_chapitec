package com.example.multi_sms_app_chapitec

import android.telephony.SmsManager
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    val smsinstance = SmsManager.getDefault()
    private val CHANNEL = "send.sms.flutter.event"
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if(call.method == "sendSMSText"){
                sendSMSText()
            }else{
                result.notImplemented()
            }
            // Note: this method is invoked on the main thread.
            // TODO
        }
    }

    private fun sendSMSText(){
        smsinstance.sendTextMessage(
                "+51943172276",
                null,
                "this is a message",
                null,
                null
        )
    }

}
