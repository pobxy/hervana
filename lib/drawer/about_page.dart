import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ABOUT US',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Meet The Team',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green, // Match the app's green theme
                ),
              ),
            ),
            buildDeveloperSection(
              'Jerome Pasabillo',
              'Flutter/Mobile App Developer',
              'assets/team/me.jpg',
            ),
            buildDeveloperSection(
              'Camille Mendoza',
              'UI/UX Designer',
              'assets/team/cams.jpg',
            ),
            buildDeveloperSection(
              'Alexandra Margarett Oyco',
              'Resources',
              'assets/team/alex.jpg',
            ),
            buildDeveloperSection(
              'Choque Romasanta',
              'Resources',
              'assets/team/choqs.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDeveloperSection(String name, String role, String imagePath) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green.shade400, // Match the app's green theme
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 20),
          Text(
            name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            role,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
