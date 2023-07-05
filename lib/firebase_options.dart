// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDpC4Tx9gdd2-D9GC8KzJcHDs4416PL8sc',
    appId: '1:253960083452:web:405748b65bbc4e67030479',
    messagingSenderId: '253960083452',
    projectId: 'emoscope-bf5d3',
    authDomain: 'emoscope-bf5d3.firebaseapp.com',
    storageBucket: 'emoscope-bf5d3.appspot.com',
    measurementId: 'G-HY02PJV1LC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkro1tTMy0ykr6yH8IIdewNfdJ1Kc_KpI',
    appId: '1:253960083452:android:4f9f6d03ba363751030479',
    messagingSenderId: '253960083452',
    projectId: 'emoscope-bf5d3',
    storageBucket: 'emoscope-bf5d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD85puBNewz_SQulTFfuFF0Cc7Zan2GH-w',
    appId: '1:253960083452:ios:2f2dc6f885d36b07030479',
    messagingSenderId: '253960083452',
    projectId: 'emoscope-bf5d3',
    storageBucket: 'emoscope-bf5d3.appspot.com',
    iosClientId: '253960083452-6caarfivr8hmtu3uiuqqq4fnuu31ibhn.apps.googleusercontent.com',
    iosBundleId: 'com.example.emoscope',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD85puBNewz_SQulTFfuFF0Cc7Zan2GH-w',
    appId: '1:253960083452:ios:2f2dc6f885d36b07030479',
    messagingSenderId: '253960083452',
    projectId: 'emoscope-bf5d3',
    storageBucket: 'emoscope-bf5d3.appspot.com',
    iosClientId: '253960083452-6caarfivr8hmtu3uiuqqq4fnuu31ibhn.apps.googleusercontent.com',
    iosBundleId: 'com.example.emoscope',
  );
}