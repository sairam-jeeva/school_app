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
    apiKey: 'AIzaSyBTPcOcR0T6gD_bKIANCcF3tBfuLD27pgQ',
    appId: '1:288456643970:web:e95c6463236c373efe6b9b',
    messagingSenderId: '288456643970',
    projectId: 'school-app-46dc2',
    authDomain: 'school-app-46dc2.firebaseapp.com',
    storageBucket: 'school-app-46dc2.firebasestorage.app',
    measurementId: 'G-GDRGRBLF7W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHFgsMn-Z5yRcTAJziwL4HAwFiLqo4U4A',
    appId: '1:288456643970:android:33583bf7de763825fe6b9b',
    messagingSenderId: '288456643970',
    projectId: 'school-app-46dc2',
    storageBucket: 'school-app-46dc2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAchh4fw_m6SBzJ6ADUMCyGatTcKIR5BTU',
    appId: '1:288456643970:ios:a6be9b59e4a14118fe6b9b',
    messagingSenderId: '288456643970',
    projectId: 'school-app-46dc2',
    storageBucket: 'school-app-46dc2.firebasestorage.app',
    iosBundleId: 'com.example.schoolApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAchh4fw_m6SBzJ6ADUMCyGatTcKIR5BTU',
    appId: '1:288456643970:ios:a6be9b59e4a14118fe6b9b',
    messagingSenderId: '288456643970',
    projectId: 'school-app-46dc2',
    storageBucket: 'school-app-46dc2.firebasestorage.app',
    iosBundleId: 'com.example.schoolApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBTPcOcR0T6gD_bKIANCcF3tBfuLD27pgQ',
    appId: '1:288456643970:web:27ad34ff72ec4021fe6b9b',
    messagingSenderId: '288456643970',
    projectId: 'school-app-46dc2',
    authDomain: 'school-app-46dc2.firebaseapp.com',
    storageBucket: 'school-app-46dc2.firebasestorage.app',
    measurementId: 'G-MSFR8ZTV4T',
  );
}
