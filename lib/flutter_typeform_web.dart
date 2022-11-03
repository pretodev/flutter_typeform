@JS('flutter_typeform_web')
library flutter_typeform_web;

import 'dart:html';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:js/js.dart';

import 'flutter_typeform_platform_interface.dart';

@JS('openForm')
external void _nativeOpenForm(String formId, Function onSubmitted);

class FlutterTypeformWeb extends FlutterTypeformPlatform {
  FlutterTypeformWeb();

  static void registerWith(Registrar registrar) {
    FlutterTypeformPlatform.instance = FlutterTypeformWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<void> openForm(String formId, Function onSubmitted) async {
    _nativeOpenForm(formId, allowInterop(onSubmitted));
  }

  Future<void> preparePage() async {
    document.head!.append(
      LinkElement()
        ..href = '//embed.typeform.com/next/css/popup.css'
        ..rel = 'stylesheet',
    );
    document.body!.append(
      ScriptElement()
        ..src = '//embed.typeform.com/next/embed.js'
        ..type = 'application/javascript'
        ..defer = true,
    );
    document.body!.append(
      ScriptElement()
        ..src = 'assets/packages/flutter_typeform/assets/flutter_typeform.js'
        ..type = 'application/javascript'
        ..defer = true,
    );
  }
}
