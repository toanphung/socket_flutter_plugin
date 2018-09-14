import 'dart:async';


import 'package:flutter/services.dart';

class SocketFlutterPlugin {

  MethodChannel _channel = const MethodChannel('socket_flutter_plugin');

  Future<String> socket(url) async {
    final String socket = await _channel.invokeMethod('socket',<String, dynamic>{'url': url});
    return socket;
  }

  Future<String> emit(topic, message) async {
    final String success = await _channel.invokeMethod('emit',<String, dynamic>{'message': message, 'topic': topic});
    return success;
  }

  Future<Null> connect() async {
    final String socket = await _channel.invokeMethod('connect');
  }


  Future<String> on(String topic, Function _handle) async {
    final String socket = await _channel.invokeMethod('on', <String, dynamic>{'topic': topic});
    _channel.setMethodCallHandler((call) {
      if (call.method == 'received') {
        final String received = call.arguments['message'];
        Function.apply(_handle, [received]);
      }
    });
    return socket;
  }

  Future<String> unsubscribe(topic) async {
    final String success = await _channel.invokeMethod('unsubscribe', <String, dynamic>{'topic': topic});
    return success;
  }
}
