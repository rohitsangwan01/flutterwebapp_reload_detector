// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class BrowserEvents {
  ///`Browser Events`
  static Stream? get onBeforeUnload => html.window.onBeforeUnload;
  static Stream? get onUnload => html.window.onUnload;

  //Browser LocalStorage Values
  static final html.Storage _localStorage = html.window.localStorage;

  static bool get isWebReloaded  {
    String? isReloaded = _localStorage['isReload'];
    if (isReloaded == null) return false;
    return isReloaded == 'true';
  }

  static void setWebPPageReloadValue(bool value) {
    _localStorage['isReload'] = value.toString().toLowerCase();
  }
}
