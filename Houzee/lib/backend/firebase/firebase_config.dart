import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBxv_8iMU8iaywHhlbO1L2LAWxHdBCOyoI",
            authDomain: "houzee-8b3e8.firebaseapp.com",
            projectId: "houzee-8b3e8",
            storageBucket: "houzee-8b3e8.appspot.com",
            messagingSenderId: "892625712419",
            appId: "1:892625712419:web:52c7b1edead32eb25e8896",
            measurementId: "G-BN4WGEPFH9"));
  } else {
    await Firebase.initializeApp();
  }
}
