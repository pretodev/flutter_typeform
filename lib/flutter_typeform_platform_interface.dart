import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_typeform_method_channel.dart';

abstract class FlutterTypeformPlatform extends PlatformInterface {
  /// Constructs a FlutterTypeformPlatform.
  FlutterTypeformPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterTypeformPlatform _instance = MethodChannelFlutterTypeform();

  /// The default instance of [FlutterTypeformPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterTypeform].
  static FlutterTypeformPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterTypeformPlatform] when
  /// they register themselves.
  static set instance(FlutterTypeformPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> openForm(String id, Function onSubmitted);
}
