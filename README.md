# FlutterWebApp Reload Detector

This library can tell if user clicks on the refresh button of the Browser

## Getting started

add this package to pubspec.yaml file

```dart
flutterwebapp_reload_detector: 0.0.1
```

## Usage

Call `WebAppReloadDetector.onReload` on Top Level Widget only Once , check [\example](https://github.com/rohitsangwan01/flutterwebapp_reload_detector/blob/main/example/lib/main.dart#L27) app

```dart
WebAppReloadDetector.onReload(() {
    print('Web Page Reloaded')
});
```

## Why We Need this ?

if User refreshes WebApp , Flutter Web Keeps the route path saved or your project might crash because of this reload in middle of WebApp,
to prevent this we can set `WebAppReloadDetector.onReload` to do some actions, for example , take user back to home page.
Also , this will not include the case of HotReload or HotRefresh , it will only trigger if user Refresh the Browser Page
