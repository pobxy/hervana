import 'package:flutter/material.dart';

class AppinfoPage extends StatelessWidget {
  const AppinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ABOUT HERVANA',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: double.infinity,
            // Removed height to allow it to expand based on content
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Text(
              """HERVANA is a mobile application that aims to provide a assistant to treat certain common ailments at home, the mobile app provides necessary information when it comes to medicinal herbs, its use and ways to prepare.\nMedical advice is not meant to be replaced by this mobile application. Please contact a doctor right away if you have a medical emergency. The developers of this software do not warrant that it is error-free, accurate, or accessible. The app is offered with no warranties expressed or implied""",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
    );
  }
}
