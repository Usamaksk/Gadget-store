// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBYxSHhTVXlPTfqvty9kbcQnBKxdJT6eAU',
    appId: '1:89331142315:web:10453a2d3294c72e0971ee',
    messagingSenderId: '89331142315',
    projectId: 'gadgetstore-eadb7',
    authDomain: 'gadgetstore-eadb7.firebaseapp.com',
    storageBucket: 'gadgetstore-eadb7.appspot.com',
    measurementId: 'G-VE483D0LT2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD75zSSTKtcEY9WEqDIoBb4q5gBG5RTjFo',
    appId: '1:89331142315:android:1d4e5de020276ce60971ee',
    messagingSenderId: '89331142315',
    projectId: 'gadgetstore-eadb7',
    storageBucket: 'gadgetstore-eadb7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrhcEfkLs4DqZ2IXX_F5YMoj-Nv6OaMJs',
    appId: '1:89331142315:ios:426fe25d80d216e50971ee',
    messagingSenderId: '89331142315',
    projectId: 'gadgetstore-eadb7',
    storageBucket: 'gadgetstore-eadb7.appspot.com',
    iosBundleId: 'com.gadgetstore.gadget',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrhcEfkLs4DqZ2IXX_F5YMoj-Nv6OaMJs',
    appId: '1:89331142315:ios:426fe25d80d216e50971ee',
    messagingSenderId: '89331142315',
    projectId: 'gadgetstore-eadb7',
    storageBucket: 'gadgetstore-eadb7.appspot.com',
    iosBundleId: 'com.gadgetstore.gadget',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYxSHhTVXlPTfqvty9kbcQnBKxdJT6eAU',
    appId: '1:89331142315:web:4dcaf5bf95b507050971ee',
    messagingSenderId: '89331142315',
    projectId: 'gadgetstore-eadb7',
    authDomain: 'gadgetstore-eadb7.firebaseapp.com',
    storageBucket: 'gadgetstore-eadb7.appspot.com',
    measurementId: 'G-G2DHR2ZZZ2',
  );
}
