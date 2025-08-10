import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDypkaLQJDPvZz9GS8hYS-gLiMyI6QFCgY",
            authDomain: "calibisync33-ui5ejh.firebaseapp.com",
            projectId: "calibisync33-ui5ejh",
            storageBucket: "calibisync33-ui5ejh.firebasestorage.app",
            messagingSenderId: "449087142299",
            appId: "1:449087142299:web:7f9e07e6de5224b304c93e"));
  } else {
    await Firebase.initializeApp();
  }
}
