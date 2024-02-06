import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../controller/bottom_nav_controller.dart';
import '/main_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      primarySwatch: Colors.green,
    );
    // Set preferred orientations globally
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'HERVANA',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: theme,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo/logo.png',
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
  BottomNavigationBarController controller =
  Get.put(BottomNavigationBarController());
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'HERVANA',
        style: TextStyle(color: Colors.green),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.green),
    ),
    drawer: const MainDrawer(),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.green.shade800,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.green,
            gap: 8,
            onTabChange: (value) {
              if (kDebugMode) {
                print(controller.index.value = value);
              }

              if (value == 1) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'MAHALAGANG PAALALA',
                        style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                      ),
                      content: const Text(
                        'Ang ilan sa mga herbal medication narito ay hindi aprubado ng DOH, ngunit nag papakita ng potensyal na may bisa sa paggamot sa mga naturang pangkaraniwang karamdaman.  ',
                        textAlign: TextAlign.justify,
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Isara',
                          style: TextStyle(color: Colors.green),
                          )
                        ),
                      ],
                    );
                  },
                );
              }
            },
            padding: const EdgeInsets.all(16),
            tabs: const [
              // GButton(
              //   icon: Icons.home_outlined,
              //   text: 'Home',
              //   textSize: 15,
              //   iconSize: 20,
              // ),
              GButton(
                icon: Icons.spa_outlined,
                text: 'Plants',
                textSize: 15,
                iconSize: 20,
              ),
              GButton(
                icon: FeatherIcons.list,
                text: 'Ailments',
                textSize: 15,
                iconSize: 20,
              ),
              GButton(
                icon: FeatherIcons.bookOpen,
                text: 'Clinics',
                textSize: 15,
                iconSize: 20,
              ),
            ],
          ),
        ),
      ),
    ),
    body: Obx(() => controller.pages[controller.index.value]),
  );
}
}
