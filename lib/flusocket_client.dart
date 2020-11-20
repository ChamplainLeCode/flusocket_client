
import 'dart:async';

import 'package:flutter/services.dart';

class FlusocketClient {
  static const MethodChannel _channel =
      const MethodChannel('flusocket_client');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
