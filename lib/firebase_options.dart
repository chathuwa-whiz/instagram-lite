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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCPk198v1XpZ4oVufME0Qxdz1XZKgD5iP0',
    appId: '1:20201676928:web:d97f0acdeee58b6be94665',
    messagingSenderId: '20201676928',
    projectId: 'socialapptutorial-80a65',
    authDomain: 'socialapptutorial-80a65.firebaseapp.com',
    storageBucket: 'socialapptutorial-80a65.firebasestorage.app',
    measurementId: 'G-Z0H819YB8Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBYzz6LjBhWHeNtCo4U30U3pEGMuiGrtY',
    appId: '1:20201676928:android:fb209fe3889e937de94665',
    messagingSenderId: '20201676928',
    projectId: 'socialapptutorial-80a65',
    storageBucket: 'socialapptutorial-80a65.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDiYiSADBgMf--TyNtY6WoXhTgiWF4hUk',
    appId: '1:20201676928:ios:8d08afded55fcc82e94665',
    messagingSenderId: '20201676928',
    projectId: 'socialapptutorial-80a65',
    storageBucket: 'socialapptutorial-80a65.firebasestorage.app',
    iosBundleId: 'com.watcherx.app',
  );
}
