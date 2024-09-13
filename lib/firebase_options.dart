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
    apiKey: 'AIzaSyAoIk_JePL3fFX5MdHcL52Ux-7GIrVb1aQ',
    appId: '1:64823716449:web:9cab29a2465cf7d0d8d820',
    messagingSenderId: '64823716449',
    projectId: 'ikaticket-a75ab',
    authDomain: 'ikaticket-a75ab.firebaseapp.com',
    storageBucket: 'ikaticket-a75ab.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7XLJnx5Keang67CyBuuqgRsuuQ6uwLHk',
    appId: '1:64823716449:android:8224a0d2e49d1765d8d820',
    messagingSenderId: '64823716449',
    projectId: 'ikaticket-a75ab',
    storageBucket: 'ikaticket-a75ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaYfiB0VlZ2_EFCevd9xaGpbpfBO2swXU',
    appId: '1:64823716449:ios:60f9afd583601af8d8d820',
    messagingSenderId: '64823716449',
    projectId: 'ikaticket-a75ab',
    storageBucket: 'ikaticket-a75ab.appspot.com',
    iosBundleId: 'com.example.ikaTicket',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaYfiB0VlZ2_EFCevd9xaGpbpfBO2swXU',
    appId: '1:64823716449:ios:60f9afd583601af8d8d820',
    messagingSenderId: '64823716449',
    projectId: 'ikaticket-a75ab',
    storageBucket: 'ikaticket-a75ab.appspot.com',
    iosBundleId: 'com.example.ikaTicket',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAoIk_JePL3fFX5MdHcL52Ux-7GIrVb1aQ',
    appId: '1:64823716449:web:392128128e5fd7cdd8d820',
    messagingSenderId: '64823716449',
    projectId: 'ikaticket-a75ab',
    authDomain: 'ikaticket-a75ab.firebaseapp.com',
    storageBucket: 'ikaticket-a75ab.appspot.com',
  );
}