import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ClinicPage extends StatelessWidget {
  const ClinicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.green.shade700,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Naturopathic Clinics and Wellness Centers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Explore health clinics and wellness centers and try another approach to healing',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ListTileWithBottomSheet.demoList().length,
              itemBuilder: (context, index) {
                return ListTileWithBottomSheet.demoList()[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileWithBottomSheet extends StatelessWidget {
  final String title;
  final String description;
  final Map<String, String> websiteLinks;
  final IconData customIcon;
  final String clinicAddress;

  const ListTileWithBottomSheet({
    super.key,
    required this.title,
    required this.description,
    required this.websiteLinks,
    required this.customIcon,
    required this.clinicAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0, // Set elevation to 0.0 to use the shadow effect in the BoxDecoration
      margin: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.3),
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            _showBottomSheet(
              context,
              title,
              description,
              websiteLinks,
              customIcon,
              clinicAddress: clinicAddress,
            );
          },
        ),
      ),
    );
  }

  void _showBottomSheet(
      BuildContext context,
      String title,
      String description,
      Map<String, String> websiteLinks,
      IconData? customIcon, {
        required String clinicAddress,
      }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  description,
                  style: const TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 16.0),
                if (customIcon != null)
                  Row(
                    children: [
                      Icon(
                        customIcon,
                        size: 24.0,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          clinicAddress,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start, // Center the icons horizontally
                  children: websiteLinks.entries
                      .map((entry) => _buildIcon(context, entry))
                      .toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildIcon(BuildContext context, MapEntry<String, String> entry) {
    return GestureDetector(
      onTap: () {
        _launchURL(entry.value);
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _getIcon(entry.key),
        ),
      ),
    );
  }

  Widget _getIcon(String linkType) {
    switch (linkType) {
      case 'Website':
        return Icon(Icons.language_outlined, size: 40.0, color: Colors.green.shade400);
      case 'Email':
        return Icon(Icons.email_outlined, size: 40.0, color: Colors.green.shade400);
      case 'Phone':
        return Icon(FeatherIcons.phoneCall, size: 35.0, color: Colors.green.shade400);
      case 'Facebook':
        return Icon(FeatherIcons.facebook, size: 35.0, color: Colors.green.shade400);
      case 'Twitter':
        return Icon(FeatherIcons.twitter, size: 35.0, color: Colors.green.shade400);
      case 'Instagram':
        return Icon(FeatherIcons.instagram, size: 35.0, color: Colors.green.shade400);
      case 'LinkedIn':
        return Icon(FeatherIcons.linkedin, size: 35.0, color: Colors.green.shade400);
      default:
        return Icon(Icons.link_rounded, size: 40.0, color: Colors.green.shade400);
    }
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  static List<ListTileWithBottomSheet> demoList() {
    return [
      const ListTileWithBottomSheet(
        title: 'Beauhealth Naturopathic Wellness Center',
        description: 'A naturopathic clinic certified by the PITAHC, DOH. A holistic approach to beauty, health, and wellness by organic and natural means and treatment in accordance with the Traditional and Alternative Medicine Act (TAMA) of 1997.',
        websiteLinks: {'Facebook': 'https://www.facebook.com/beauhealthnaturopathic', 'Email': 'mailto:beauhealthnaturopathic@gmail.com'},
        customIcon: FeatherIcons.mapPin,
        clinicAddress: 'Blk 1 Lot 15 Felix Ave. Karangalan Village Brgy. San Isidro Cainta Rizal',
      ),
      const ListTileWithBottomSheet(
        title: 'Living Vibrant Colonics Therapy/Wellness Center',
        description: 'Leader in Colon Cleansing and Naturopathic Services. Living Vibrant has been a preferred center for Colon Hydrotherapy since 2010; over the years we have improved our services by adding assessment tools, cell rejuvenating and immune booster therapy.',
        websiteLinks: {'Facebook': 'https://www.facebook.com/livingvibrantcolonics?mibextid=2JQ9oc', 'Phone': 'tel:+9172991744'},
        customIcon: FeatherIcons.mapPin,
        clinicAddress: 'Unit 2G TORRE DE VENEZIA SUITES, TIMOG AVENUE CORNER SCT SANTIAGO STREET, Quezon City, Philippines, 1103',
      ),
      const ListTileWithBottomSheet(
        title: 'Nurture Wellness Village, Inc.',
        description: 'Nurture Wellness Village is the pioneer wellness spa in the Philippines, situated in the heart of Tagaytay. They offer a distinctive brand of “Ecotherapy” while still maintaining their services purely Filipino — from their body massage and spa services, down to the food they offer.',
        websiteLinks: {'Website': 'https://nurture.com.ph/', 'Email': 'mailto:info@nurture.com.ph', 'Instagram': 'https://www.instagram.com/nurturewellnessvillage/?hl=en', 'Facebook': 'https://www.facebook.com/nurturewellnessvillage/'},
        customIcon: FeatherIcons.mapPin,
        clinicAddress: 'Pulong Sagingan, Barangay Maitim II West Luzon, Tagaytay, 4120 Cavite',
      ),
      const ListTileWithBottomSheet(
        title: 'Richter Alternative Medical Center, Phils.',
        description: 'Richter Alternative Medical Center provides integrative care where our patients receive services that aim to help people to live a healthy and wealthy way of life',
        websiteLinks: {'Facebook': 'https://www.facebook.com/profile.php?id=100064115586531', 'Email': 'mailto:richteralternative@ymail.com' },
        customIcon: FeatherIcons.mapPin,
        clinicAddress: '402 Alen Condominium, 92 Sen. Gil Puyat Ave., Pasay City . Pasay City Metro Manila',
      ),
      const ListTileWithBottomSheet(
        title: 'Wellness First Holistic Health Care',
        description: 'At Wellness First, they embrace a holistic approach to healing, nurturing your mind, body, and soul, with an understanding that true wellness encompasses more than just the absence of illness.',
        websiteLinks: {'Website': 'https://wellnessfirstphl.com/', 'Facebook': 'https://www.facebook.com/wellnessfirstphilippines', 'Instagram': 'https://www.instagram.com/wellnessfirst.ph/'},
        customIcon: Icons.location_pin, // specify the desired icon
        clinicAddress: '521, 5th floor Hub B One Oasis Condominium, Ortigas Ave, Pasig',
      ),
      const ListTileWithBottomSheet(
        title: 'Villa Care Health and Wellness Center',
        description: 'Offers a personal and caring approach to health and wellness by focusing on optimization of Healthy body detoxification, natural and lasting energy boosting, recovery and maximising wellness',
        websiteLinks: {'Website': 'https://seriousmd.com/doc/villa-subido0?fbclid=IwAR0gsBjcVGRnVDiNhw5Hfj_LDF_0-fxAmk7qS_e8s3yb4UeoDR_wnBMVI3o', 'Facebook': 'https://www.facebook.com/villacarewellness', 'Email': 'mailto:villaquinesubido@gmail.com' },
        customIcon: FeatherIcons.mapPin,
        clinicAddress: 'Unit 4i, 4F Amber Place Bldg. Fort Bonifacio, Taguig City',
      ),
      const ListTileWithBottomSheet(
        title: 'Tree of Life Health and Weight Management, Inc.',
        description: 'A healing sanctuary that promotes natural wellness through high-quality treatments and lifestyle modification. Founded in 2010, they have helped thousands of clients start their health journey, providing alternative and holistic treatments for healing and weight management.',
        websiteLinks: {'Website': 'https://www.treeoflifeph.com/', 'Facebook': 'https://www.facebook.com/tolwellnessph', 'Instagram': 'https://www.instagram.com/treeoflifeph/?hl=en'},
        customIcon: FeatherIcons.mapPin,
        clinicAddress: '103 Washington St. Merville, Parañaque, Metro Manila',
      ),
    ];
  }
}
