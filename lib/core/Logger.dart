import 'package:flutter/foundation.dart';

class Logger<T> {
  static const _empty = [];

  void log(String message, [List<Object> params = _empty]) {
    params.forEach((param) => message = message.replaceFirst('{}', '$param'));
    if (kDebugMode)
      print(
          '-- ${DateTime.now()} ${this.runtimeType}.${T.runtimeType} $message');
  }
}
