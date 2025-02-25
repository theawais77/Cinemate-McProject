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
    apiKey: 'AIzaSyADvjs42hbTQlB2B5H_p7KdnCYJ4wU7H_Y',
    appId: '1:189593274790:web:49640ef24f3e5fca9ce767',
    messagingSenderId: '189593274790',
    projectId: 'cinemate-auth-007',
    authDomain: 'cinemate-auth-007.firebaseapp.com',
    storageBucket: 'cinemate-auth-007.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2l2IRjgdjrjLaPzuqYZUY-AgT7GoRt7A',
    appId: '1:189593274790:android:d91e3080c010d3209ce767',
    messagingSenderId: '189593274790',
    projectId: 'cinemate-auth-007',
    storageBucket: 'cinemate-auth-007.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBrDTQhU7yLK9-wBjOC0UgSzRy2yME5oYs',
    appId: '1:189593274790:ios:ba37c33f55715da99ce767',
    messagingSenderId: '189593274790',
    projectId: 'cinemate-auth-007',
    storageBucket: 'cinemate-auth-007.firebasestorage.app',
    iosBundleId: 'com.cybrnode.cinemate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBrDTQhU7yLK9-wBjOC0UgSzRy2yME5oYs',
    appId: '1:189593274790:ios:ba37c33f55715da99ce767',
    messagingSenderId: '189593274790',
    projectId: 'cinemate-auth-007',
    storageBucket: 'cinemate-auth-007.firebasestorage.app',
    iosBundleId: 'com.cybrnode.cinemate',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyADvjs42hbTQlB2B5H_p7KdnCYJ4wU7H_Y',
    appId: '1:189593274790:web:1c4093dca7baba089ce767',
    messagingSenderId: '189593274790',
    projectId: 'cinemate-auth-007',
    authDomain: 'cinemate-auth-007.firebaseapp.com',
    storageBucket: 'cinemate-auth-007.firebasestorage.app',
  );
}
