import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterwebapp_reload_detector/src/browser_events_stub.dart'
    if (dart.library.html) 'package:flutterwebapp_reload_detector/src/browser_events.dart';

class WebAppReloadDetector {
  /// Call `onBrowserReload`  on Top Level Widget only Once
  static void onReload(Function() reloadCallback) {
    if (!kIsWeb) return;
    WidgetsFlutterBinding.ensureInitialized();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (BrowserEvents.isWebReloaded) {
        BrowserEvents.setWebPPageReloadValue(false);
        reloadCallback.call();
      }
      BrowserEvents.onUnload
          ?.listen((_) => BrowserEvents.setWebPPageReloadValue(true));
    });
  }
}
