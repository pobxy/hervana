import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'drawer/appinfo_page.dart';
import 'drawer/about_page.dart';
import 'drawer/disclaimer_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.white, // Set background color to white
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 15,
                      left: 10,
                      right: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/logo/logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green.shade700, // Set background color to green
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      FeatherIcons.users,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: const Text(
                      'About Us',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AboutPage()));
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.assignment_late_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: const Text(
                      'Disclaimer',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DisclaimerPage()));
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: const Text(
                      'App Information',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AppinfoPage()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
