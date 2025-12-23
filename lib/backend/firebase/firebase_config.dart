import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCmdZjj0-476XkxlqMyIgWJGVoO-4NzGw",
            authDomain: "student-helper-app-wtvmhc.firebaseapp.com",
            projectId: "student-helper-app-wtvmhc",
            storageBucket: "student-helper-app-wtvmhc.firebasestorage.app",
            messagingSenderId: "730556848854",
            appId: "1:730556848854:web:67c0f41714b888ff800777",
            measurementId: "G-JMN0D5ZP7Z"));
  } else {
    await Firebase.initializeApp();
  }
}
