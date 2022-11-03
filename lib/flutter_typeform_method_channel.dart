import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_typeform_platform_interface.dart';

/// An implementation of [FlutterTypeformPlatform] that uses method channels.
class MethodChannelFlutterTypeform extends FlutterTypeformPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_typeform');

  @override
  Future<void> openForm(String id, Function onSubmitted) {
    // TODO: implement openForm
    throw UnimplementedError();
  }
}
