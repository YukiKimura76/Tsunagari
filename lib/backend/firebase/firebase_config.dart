import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD930DBaBs5G_Z-xOGRSk_JJqXgXNHS6HE",
            authDomain: "tsunagari-xg8uvv.firebaseapp.com",
            projectId: "tsunagari-xg8uvv",
            storageBucket: "tsunagari-xg8uvv.appspot.com",
            messagingSenderId: "812563847912",
            appId: "1:812563847912:web:93e338bfb91d3d5676475d"));
  } else {
    await Firebase.initializeApp();
  }
}
