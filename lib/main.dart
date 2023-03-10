import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nihongo_learn/view/login_page.dart';
import 'package:nihongo_learn/view/profile_page.dart';
import 'package:nihongo_learn/view/register_page.dart';
import 'package:nihongo_learn/view/main_menu.dart';
import 'package:nihongo_learn/view/menu.dart';
import 'package:nihongo_learn/view/wordsheet.dart';
import 'package:nihongo_learn/view/wordsheetCourse.dart';
import 'package:nihongo_learn/view/lessonPage.dart';
import 'package:nihongo_learn/view/payment.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'route/route.dart' as route;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nihongo_learn/firebase_options.dart';
import 'package:nihongo_learn/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nihongo.Learn',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      onGenerateRoute: route.controller,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyHomePage(title: "nihongo.learn");
          } else {
            return LoginPage();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int idx = 0;

  // void initState(){
  //   // super.initState();
  //   // initialization();
  // }
  //
  // void initialization() async {
  //   // This is where you can initialize the resources needed by your app while
  //   // the splash screen is displayed.  Remove the following example because
  //   // delaying the user experience is a bad design practice!
  //   // ignore_for_file: avoid_print
  //   // print('ready in 3...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('ready in 2...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('ready in 1...');
  //   // await Future.delayed(const Duration(seconds: 1));
  //   // print('go!');
  //   // FlutterNativeSplash.remove();
  // }

  static const List<Widget> halaman = [
    const menu(),
    const wordsheetCourse(),
    const lesson(),
    const payment(),
    const Profile(),

    // Center(child: Text("Dua")),
    // Center(child: Text("Tiga")),
  ];

  void gantiItem(int index) {
    setState(() {
      idx = index;
    });
  }

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),

      body: halaman[idx],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: AppColor.softRed,
          onTap: onItemTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color: Colors.grey,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.translate,
                  color: Colors.grey,
                ),
                label: 'Kana Sheet'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.grey,
                ),
                label: "Lesson"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.stars,
                  color: Colors.grey,
                ),
                label: "Purchase"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: "Account"),
          ]),
    );
  }
}
