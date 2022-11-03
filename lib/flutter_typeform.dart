import 'package:flutter/animation.dart';
import 'package:flutter_typeform/flutter_typeform_web.dart';

import 'flutter_typeform_platform_interface.dart';

class FlutterTypeform {
  Future<void> openForm(String formId, {VoidCallback? onSubmitted}) {
    final instance = FlutterTypeformPlatform.instance;
    if (instance is FlutterTypeformWeb) {
      return instance.openForm(formId, () {
        if (onSubmitted != null) {
          onSubmitted();
        }
      });
    }
    throw UnimplementedError();
  }

  Future<void> preparePage() {
    final instance = FlutterTypeformPlatform.instance;
    if (instance is FlutterTypeformWeb) {
      return instance.preparePage();
    }
    throw UnimplementedError();
  }
}
