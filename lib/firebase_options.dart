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
    apiKey: 'AIzaSyCqRCE3ZwIpIvrVNFcPhHX2maVK29oItr0',
    appId: '1:644179158986:web:3f23d26c9b775d8a539133',
    messagingSenderId: '644179158986',
    projectId: 'scottbebington-portfolio',
    authDomain: 'scottbebington-portfolio.firebaseapp.com',
    storageBucket: 'scottbebington-portfolio.appspot.com',
    measurementId: 'G-ZNZ36X23VD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-wMI5eypIffIjG-m-Hz6uov5V2POV14c',
    appId: '1:644179158986:android:53a3c5118273243c539133',
    messagingSenderId: '644179158986',
    projectId: 'scottbebington-portfolio',
    storageBucket: 'scottbebington-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCkrhSSg2u_hjMaz7vZqdLbouOIYPQlq0',
    appId: '1:644179158986:ios:730bdd5e2f96c227539133',
    messagingSenderId: '644179158986',
    projectId: 'scottbebington-portfolio',
    storageBucket: 'scottbebington-portfolio.appspot.com',
    iosBundleId: 'com.example.myportfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCkrhSSg2u_hjMaz7vZqdLbouOIYPQlq0',
    appId: '1:644179158986:ios:730bdd5e2f96c227539133',
    messagingSenderId: '644179158986',
    projectId: 'scottbebington-portfolio',
    storageBucket: 'scottbebington-portfolio.appspot.com',
    iosBundleId: 'com.example.myportfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCqRCE3ZwIpIvrVNFcPhHX2maVK29oItr0',
    appId: '1:644179158986:web:3f23d26c9b775d8a539133',
    messagingSenderId: '644179158986',
    projectId: 'scottbebington-portfolio',
    authDomain: 'scottbebington-portfolio.firebaseapp.com',
    storageBucket: 'scottbebington-portfolio.appspot.com',
    measurementId: 'G-ZNZ36X23VD',
  );
}
