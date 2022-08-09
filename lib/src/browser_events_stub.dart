//use this to ignore html errors in NonWeb Platforms
class BrowserEvents {
  static Stream? get onBeforeUnload {
    return null;
  }

  static Stream? get onUnload {
    return null;
  }

  static bool isWebReloaded = false;
  static void setWebPPageReloadValue(bool value) {}
}
