import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQKDTbttzAd1MWwsRp4giMOvMRb9-WNYk",
            authDomain: "bustracker-9ae09.firebaseapp.com",
            projectId: "bustracker-9ae09",
            storageBucket: "bustracker-9ae09.firebasestorage.app",
            messagingSenderId: "848248703482",
            appId: "1:848248703482:web:0efae66c8c10867fae7c43"));
  } else {
    await Firebase.initializeApp();
  }
}
