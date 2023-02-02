import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class FlutterRestart {
  static const MethodChannel _channel = const MethodChannel('flutter_restart');

//  static Future<String> get platformVersion async {
//    final String version = await _channel.invokeMethod('getPlatformVersion');
//    return version;
//  }
  static Future<bool> restartApp() async {
    if (Platform.isAndroid) {
      final result = await _channel.invokeMethod('restartApp');
      return result;
    } else {
      exit(0);
    }
  }
}
