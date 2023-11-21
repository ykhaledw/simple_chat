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
    apiKey: 'AIzaSyDvfrox7lGAhOBTugQlGbR231T_jwGVmwk',
    appId: '1:562807451776:web:7cdd17778d23dd7e1bf665',
    messagingSenderId: '562807451776',
    projectId: 'simple-chat-e5272',
    authDomain: 'simple-chat-e5272.firebaseapp.com',
    storageBucket: 'simple-chat-e5272.appspot.com',
    measurementId: 'G-LE79LBFWJ3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6CkECuKtRIz3wynx8UZ9OR78bLSxpww4',
    appId: '1:562807451776:android:457599870d48d7d41bf665',
    messagingSenderId: '562807451776',
    projectId: 'simple-chat-e5272',
    storageBucket: 'simple-chat-e5272.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp-EESZ6WqOwXA28iax7H_DMwRKSL89RA',
    appId: '1:562807451776:ios:deb69b7394a483aa1bf665',
    messagingSenderId: '562807451776',
    projectId: 'simple-chat-e5272',
    storageBucket: 'simple-chat-e5272.appspot.com',
    iosBundleId: 'com.example.simpleChat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCp-EESZ6WqOwXA28iax7H_DMwRKSL89RA',
    appId: '1:562807451776:ios:1e3d7c66786a71841bf665',
    messagingSenderId: '562807451776',
    projectId: 'simple-chat-e5272',
    storageBucket: 'simple-chat-e5272.appspot.com',
    iosBundleId: 'com.example.simpleChat.RunnerTests',
  );
}
