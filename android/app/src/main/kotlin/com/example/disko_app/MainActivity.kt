package com.example.disko_app

import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("f39a74dc-75b5-4dc8-a9ad-9d2cd5b0080b")
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
}

