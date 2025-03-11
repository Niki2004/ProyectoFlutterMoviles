import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDpjcK_EbmVUNKvxWo1sPx1s0LhOy9Fd28",
            authDomain: "proyecto-movil-1qg5af.firebaseapp.com",
            projectId: "proyecto-movil-1qg5af",
            storageBucket: "proyecto-movil-1qg5af.firebasestorage.app",
            messagingSenderId: "459470564574",
            appId: "1:459470564574:web:63883b8c7850ddd197a64f"));
  } else {
    await Firebase.initializeApp();
  }
}
