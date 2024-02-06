import 'package:flutter/material.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DISCLAIMER',
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
              """Tips on Preparation for Intake of Herbal Medicines: \n
• Use only half the dosage prescribed for fresh parts like leaves when using dried parts.

• Do not use stainless steel utensils when boiling decoctions. Only use earthen, enamelled, glass or alike utensils.

• As a rule of thumb, when boiling leaves and other plant parts, do not cover the pot, and boil in low flame.

• Decoctions lose potency after some time. Dispose of decoctions after one day. To keep fresh during the day, keep lukewarm in a flask or thermos.

• Always consult with a doctor if symptoms persist or if any sign of allergic reaction develops.""",
              style: TextStyle(
                fontSize: 15,
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
