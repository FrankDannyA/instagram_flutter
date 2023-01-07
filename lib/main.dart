import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutter/responsive/responsive_layout.dart';
import 'package:instagram_flutter/responsive/web_screen_layaout.dart';
import 'package:instagram_flutter/screens/login_screen.dart';
import 'package:instagram_flutter/screens/sing_up_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYbirTvNb0sNLnvNibqCAslYH5Gb3dz1s",
            authDomain: "instagramflutter-ede55.firebaseapp.com",
            projectId: "instagramflutter-ede55",
            storageBucket: "instagramflutter-ede55.appspot.com",
            messagingSenderId: "138023735994",
            appId: "1:138023735994:web:3e18cabe3f1406764da883"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: Scaffold(
          // body: const ResponsiveLayout(
          //     webScreenLayout: WebScreenLayaout(),
          //     mobileScreenLayout: MobileScreenLayout()),

          body: SingUpScreen(),
        ));
  }
}
