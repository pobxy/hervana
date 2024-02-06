// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class HerbPage extends StatefulWidget {
  HerbPage({super.key,});

  final List<String> imageDescriptions = [
    "A shrub with yellow flowers that grows in tropical areas,a medicinal herb that contains chrysophanic acid, a fungicide used to treat fungal infections, like ringworms, scabies, and eczema,it also contains saponin, a laxative that is useful in expelling intestinal parasites. The fresh leaves are pounded and applied as a poultice (panapal) on the affected area to treat Tinea infections, insect bites, ringworms, eczema, scabies and itchiness. Alternatively, the leaves can be boiled in water and the decoction can be used as mouthwash, stringent, and wash for eczema.",
    "This bitter gourd is widely cultivated as a vegetable and food ingredient by many, known anti-diabetic and anti-hypertensive effects because of its flavanoids and alkaloids properties that make the Pancreas produce more insulin that controls the blood sugar in diabetics.The fresh or dried fruits and leaves can be boiled in water and the decoction can be taken orally as a tea, also a spoonful of extracted juice from the fresh fruits or leaves can also be taken orally or applied on the skin to treat coughs, fever, worms,wound disinfectant, diarrhea and for other ailments, the fruit and leaves can both be juiced and taken orally.",
    "Is commonly used as a spice and condiment, known for its anti-cholesterol and anti-hypertensive effects that can reduce cholesterol and control blood pressure. The fresh cloves can be peeled and crushed, and the juice can be taken orally or applied on the skin good for treating athletes foot. The cloves can also be boiled in water and the decoction can be used as a gargle or a wash to treat fever. Juice extracted from garlic bulbs can be used as tick and mosquito repellant when applied to skin.",
    "This guava fruit that which is rich in vitamin C and antioxidants, a popular herbal remedy for its anti-septic and anti-inflammatory effects that can heal wounds and prevent infections. The fresh leaves are washed and boiled in water and the decoction can be used as a mouthwash or a wound disinfectant. The bark can also be boiled in water and the decoction can be used as a wash for skin ulcers and eczema also its fresh leaves can be chewed to treat toothache.",
    "A shrub with purple flowers that grows in open fields and roadsides. Proven by experts for its anti-tussive and anti-asthmatic effects that can relieve coughs and asthma. The fresh or dried leaves can be boiled in water and the decoction can be taken orally as a tea or syrup. The leaves can also be pounded and applied as a poultice (panapal) on the chest for asthma or bronchitis.A decoction of the roots and leaves of Lagundi are applied to wounds, and used as aromatic baths for skin diseases while the juice extracted from the flowers of Lagundi plant is taken in as an aid for ailments like fever, diarrhea, liver disorders, and even cholera.",
    "A vine with red or black fruits that resembles small coconuts. It has anthelmintic effects that can eliminate intestinal worms. Its dried mature seeds can be cracked and ingested orally two hours after eating. The dosage is 5 to 7 seeds for children and 8 to 10 seeds for adults. If one dose does not eliminate the worms, wait a week before repeating the dose. not recommended for children ages 4 years old and below. additionally a decoction of its roots are also sometimes used as a remedy for rheumatism while its fruits are used as an effective way to relieve toothaches.",
    "A grass-like plant with bluish flowers that grows in mountainous areas, that has diuretic (pangpa i hì) and lithotripsic effects that can increase urine flow and expel urinary stones. The fresh or dried leaves can be boiled in water and the decoction can be taken orally as a tea or a diuretic (pangpa i hi). The leaves can also be pounded and applied as a poultice (panapal) on the forehead for headache or on the abdomen for stomachache, decoction of the roots, on the other hand, is to be taken in as cure for fever.",
    "A shrub with small white flowers that grows in forests and grasslands. It has antispasmodic and anti-inflammatory effects that can relax the intestines and soothe the skin. a decoction of the leaves has been used as a disinfectant wash during child birth, as cure for diarrhea, as tea for general good heath and because Tsaang Gubat has high fluoride content, it is used as a mouth gargle for preventing tooth decay.",
    "A succulent plant with green leaves that grows in damp and shady places. It has antiarthritic and antigout effects that can reduce joint inflammation and pain. The fresh leaves can be eaten raw as a salad or boiled in water and the decoction can be taken orally as a tea. The leaves can also be pounded and applied as a poultice (panapal) on swollen joints or muscles, skin disorders like abscesses, pimples and boils. additionally, For headaches, heat a couple of leaves in hot water, bruise the surface and apply on the forehead. The decoction of leaves and stalks is also good for abdominal pains and kidney problems.",
    """This is a mint-like plant with aromatic leaves that grows in gardens and pots. It has been recognized for its antiseptic, anti-cancer, diuretic, anti-spasm, anti-emetic activities. Properties of this herbal plant are also found to function as stimulant and to have restorative effects, and pain reliever (analgesic).The decoction its fresh leaves can be taken orally as a tea and is effective for minor ailments such as headaches, toothaches, joint pains and relive stomachaches due to gas buildup and indigestion.""",
  ];
  final List<String> addDescriptions = [
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
    "Commonly used for ailments such as:",
  ];
  final List<String> ailmentsLists = [
    """• Ringworms (Buni)
• Scabies (Galis Aso)
• Insect Bites
• Eczema
• Athletes Foot (Alipunga)
• Tinea Infections
  • Laxative (as intestinal parasite and other stomach problems)
    """,
    """• Diabetes
• Lowers Blood Sugar
• Lowers Blood Pressure
• Cough & Fever (Remedy) 
• Worms (Intestinal Parasites)
• Wounds (as disinfectant)
• Diarrhea
    """,
    """• Lowers Bad Cholesterol Level
• Hypertension
• Aids in lowering blood pressure
• Cough & Fever (Remedy)
• Insect Repellant
• Athletes Foot (Alipunga)
    """,
    """• Wound (Disinfectant / Wash)
• Mouth Infections
• Swollen Gums
• Toothache
• Diarrhea
    """,
    """• Fever (Lagnat)
• Cough (Ubo)
• Asthma (Hika)
• Diarrhea
    """,
    """• Intestinal Worms (Bulateng Askaris)
• Rheumatism (Rayuma)
• Tootache
    """,
    """• Diuretic Agent (Pangpa I-hi)
• Fever (Lagnat)
• Effective in the dissolving kidney stones
• Relief of stomach pains and headaches
    """,
    """• Intestinal Motility
• Stomach Pains
• Diarrhea
• Mouth Gargle (Preventing tooth decay)
    """,
    """• Gout
• Arthritis
• Rheumatism (Rayuma)
• Abdominal Pains
• Skin boils, abscesses, pimples
• Headaches  
    """,
    """• Arthritis
• Stomachaches
• Toothaches
• Headaches  
• Drink as tea for general good health
    """,
  ];
  final List<String> imageUrls = [
    'assets/herbs/akapulko.jpg',
    'assets/herbs/ampalaya.jpg',
    'assets/herbs/bawang.jpg',
    'assets/herbs/bayabas.jpg',
    'assets/herbs/lagundi.jpg',
    'assets/herbs/niyog-niyogan.jpg',
    'assets/herbs/sambong.jpg',
    'assets/herbs/tsaang_gubat.jpg',
    'assets/herbs/ulasimang_bato.jpg',
    'assets/herbs/yerba_buena.jpg',
  ];
  final List<String> imageTitles = [
    'AKAPULKO',
    'AMPALAYA',
    'BAWANG',
    'BAYABAS',
    'LAGUNDI',
    'NIYOG-NIYOGAN',
    'SAMBONG',
    'TSAANG GUBAT',
    'ULASIMANG BATO',
    'YERBA BUENA',
  ];
  final List<String> videoPlayers = [
    'assets/video/akapulko_.mov',
    'assets/video/ampalaya_.mov',
    'assets/video/bawang_.mov',
    'assets/video/bayabas_.mov',
    'assets/video/lagundi_.mov',
    'assets/video/niyog_niyogan.mov',
    'assets/video/sambong_.mov',
    'assets/video/tsaang_gubat.mov',
    'assets/video/ulasimang_bato.mov',
    'assets/video/yerba_buena.mov',
  ];
  final List<List<String>> associatedIllnesses = [
    ['An-an', 'Buni', 'Alipunga', 'Galis Aso', 'Skin Diseases', 'Fungal Infection', 'Ringworms', 'Scabies', 'Athletes Foot', 'Tinea Infections', 'Eczema', 'Laxative', 'Insect Bites'],
    // Akapulko
    ['Diabetes','coughs', 'fever', 'worms', 'diarrhea', 'Ubo', 'Lagnat', 'Wound','Sugat'],
    // Ampalaya
    ['Pampababa ng Kolesterol', 'High Blood Pressure', 'Cholesterol','Hypertension','Fever', 'Lagnat', 'Athletes Foot','Alipunga'],
    // Bawang
    ['Sugat', 'Impeksyon ng Bibig', 'Magang Gilagid', 'Bulok na Ngipin', 'Dysentery' ,'Toothache', 'Diarrhea', 'Wounds','Mouth infections','Swollen Gums'],
    // Bayabas
    ['Hika', 'Ubo', 'Lagnat','asthma','Cough','Fever', 'Diarrhea',],
    // Lagundi
    ['Bulateng Askaris', 'Intestinal Worms','Rheumatism','Rayuma','Toothache'],
    // Niyog-Niyogan
    ['Pantunaw ng Bato','Kidney Stones', 'Diuretic Agent', 'Pangpa i hi', 'Fever', 'Lagnat', 'Headache'],
    // Sambong
    ['Mouth gargle', 'Intestinal motility', 'Stomach pains', 'Diarrhea', 'Sakit sa Tiyan',],
    // Tsaang Gubat
    ['Gout','Arthritis','Rheumatism','Rayuma', 'Abdominal pains','Skin Boils','Headache'],
    // Ulasimang Bato
    ['Headaches','Toothaches','Arthritis','Stomachaches','Indigestion'],
    // Yerba Buena
  ];

  @override
  _HerbPageState createState() => _HerbPageState();
}

class _HerbPageState extends State<HerbPage> {
  List<String> filteredHerbTitles = [];

  @override
  void initState() {
    super.initState();
    filteredHerbTitles = widget.imageTitles;
  }

  String getScientificName(int index) {
    final List<String> scientificNames = [
      'Cassia alata',
      'Momordica charantia',
      'Allium sativum',
      'Psidium guajava',
      'Vitex negundo',
      'Quisqualis Indica L',
      'Blumea balsamifera',
      'Ehretia microphylla Lam',
      'Peperomia pellucida Linn',
      'Clinopodium douglasii',
    ];

    return scientificNames[index];
  }

  void searchHerbs(String query, List<String> keywords) {
    setState(() {
      filteredHerbTitles = widget.imageTitles.where((herb) {
        final herbIndex = widget.imageTitles.indexOf(herb);
        final associatedIllnesses = widget.associatedIllnesses[herbIndex];

        bool titleMatch = herb.toLowerCase().contains(query.toLowerCase());
        bool illnessMatch = associatedIllnesses.any((illness) =>
            illness.toLowerCase().contains(query.toLowerCase()));
        bool keywordMatch = keywords.every((keyword) =>
        herb.toLowerCase().contains(keyword) ||
            associatedIllnesses.any((illness) => illness.toLowerCase().contains(keyword)));

        return titleMatch || illnessMatch || keywordMatch;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.green.shade700,
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10 Accredited Herbal Medicine in The Philippines',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Explore the amazing benefits of herbal medicine and discover natural remedies for various health conditions, with this Ten (10) DOH approved medicinal plants / herbs.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: HerbSearch(
              herbTitles: widget.imageTitles,
              associatedIllnesses: widget.associatedIllnesses,
              onSearchResult: searchHerbs,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    int originalIndex =
                    widget.imageTitles.indexOf(filteredHerbTitles[index]);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          imageUrl: widget.imageUrls[originalIndex],
                          imageTitle: widget.imageTitles[originalIndex],
                          videoPlayer: widget.videoPlayers[originalIndex],
                          scientificName: getScientificName(originalIndex),
                          imageDescription: widget.imageDescriptions[originalIndex],
                          addDescription: widget.addDescriptions[originalIndex],
                          ailmentList: widget.ailmentsLists[originalIndex],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 2.0,
                    shadowColor: Colors.green.withOpacity(0.8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.imageUrls[widget.imageTitles
                              .indexOf(filteredHerbTitles[index])],
                          width: 120.0,
                          height: 120.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          filteredHerbTitles[index],
                          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: filteredHerbTitles.length,
            ),
          ),
        ],
      ),
    );
  }
}

class HerbSearch extends StatefulWidget {
  final List<String> herbTitles;
  final List<List<String>> associatedIllnesses;
  final Function(String, List<String>) onSearchResult;

  const HerbSearch({super.key,
    required this.herbTitles,
    required this.associatedIllnesses,
    required this.onSearchResult,
  });

  @override
  _HerbSearchState createState() => _HerbSearchState();
}

class _HerbSearchState extends State<HerbSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> filteredHerbTitles = widget.herbTitles;
    const noDataFoundImage = 'assets/logo/PlantDoodle.png';

    if (_searchController.text.isNotEmpty) {
      final List<String> keywords = _searchController.text.toLowerCase().split(RegExp(r'[^a-zA-Z]'));
      filteredHerbTitles = widget.herbTitles.where((herb) {
        final herbIndex = widget.herbTitles.indexOf(herb);
        final associatedIllnesses = widget.associatedIllnesses[herbIndex];

        bool titleMatch = herb.toLowerCase().contains(_searchController.text.toLowerCase());
        bool illnessMatch = associatedIllnesses.any((illness) =>
            illness.toLowerCase().contains(_searchController.text.toLowerCase()));
        bool keywordMatch = keywords.every((keyword) =>
        herb.toLowerCase().contains(keyword) ||
            associatedIllnesses.any((illness) => illness.toLowerCase().contains(keyword)));

        return titleMatch || illnessMatch || keywordMatch;
      }).toList();
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            onChanged: (value) {
              widget.onSearchResult(value, value.toLowerCase().split(RegExp(r'[^a-zA-Z]')));
              setState(() {});
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.green,),
              hintText: 'Search Herbs or Ailments',
            ),
          ),
          if (filteredHerbTitles.isEmpty && _searchController.text.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  Image.asset(
                    noDataFoundImage,
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'No Herbal Medicine/Ailments Found',
                      style: TextStyle(fontSize: 15,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatefulWidget {
  final String imageDescription;
  final String imageUrl;
  final String imageTitle;
  final String videoPlayer;
  final String scientificName;
  final String addDescription;
  final String ailmentList;

  const DetailScreen({
    super.key,
    required this.imageDescription,
    required this.imageUrl,
    required this.imageTitle,
    required this.videoPlayer,
    required this.scientificName,
    required this.addDescription,
    required this.ailmentList,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late List<Map<String, dynamic>> stepImages; // List to store step images and descriptions
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _initializeVideoPlayer();

    // Set the initial step images and descriptions based on the image title
    stepImages = getStepImages(widget.imageTitle);
  }

  void _initializeVideoPlayer() {
    _videoPlayerController = VideoPlayerController.asset(widget.videoPlayer);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
    );

    _videoPlayerController.addListener(() {
      if (_videoPlayerController.value.isPlaying) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }


  List<Map<String, dynamic>> getStepImages(String herbalMedicine) {
    Map<String, List<Map<String, dynamic>>> allStepImages = {
      'AKAPULKO': [
        {'number': 1, 'image': 'assets/steps/akapulko1.jpg', 'description': 'Wash the Akapulko leaves in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/akapulko2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/akapulko3.jpg', 'description': 'Then put the chop leaves of akapulko in the pot'},
        {'number': 4, 'image': 'assets/steps/akapulko4.jpg', 'description': 'Then boil it on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/akapulko5.jpg', 'description': 'Let it cool and then strain it, ready to be serve as tea'},
      ],
      'AMPALAYA': [
        {'number': 1, 'image': 'assets/steps/ampa1.jpg', 'description': 'Wash the fresh leaves of ampalaya in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/ampa2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/ampa3.jpg', 'description': 'Put the chop ampalaya leaves in the pot with water'},
        {'number': 4, 'image': 'assets/steps/ampa4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/ampa5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'BAWANG': [
        {'number': 1, 'image': 'assets/steps/basaute1.jpg', 'description': 'Crush and peel the garlic and then slice it'},
        {'number': 2, 'image': 'assets/steps/basaute2.jpg', 'description': 'Heat the pan, then add a small amount of oil'},
        {'number': 3, 'image': 'assets/steps/basaute3.jpg', 'description': 'Fry the garlic in the pan'},
        {'number': 4, 'image': 'assets/steps/basaute4.jpg', 'description': 'Stir-fry it until golden brown'},
      ],
      'BAYABAS':[
        {'number': 1, 'image': 'assets/steps/bayabas1.jpg', 'description': 'Wash the leaves of the bayabas in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/bayabas2.jpg', 'description': 'Put the chop bayabas leaves and 2 cups of water in a pot'},
        {'number': 3, 'image': 'assets/steps/bayabas3.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 4, 'image': 'assets/steps/bayabas4.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'LAGUNDI':[
        {'number': 1, 'image': 'assets/steps/lag1.jpg', 'description': 'Wash the fresh lagundi leaves in a clean water. And then chop it'},
        {'number': 2, 'image': 'assets/steps/lag2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/lag3.jpg', 'description': 'Put the chop Lagundi leaves in the pot with water'},
        {'number': 4, 'image': 'assets/steps/lag4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/lag5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'NIYOG-NIYOGAN':[
        {'number': 1, 'image': 'assets/steps/niyog1.jpg', 'description': 'Wash the Niyog-niyogan leaves in a clean water and then chop it.'},
        {'number': 2, 'image': 'assets/steps/niyog2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/niyog3.png', 'description': 'Put the chop leaves of Niyog-niyogan in the pot'},
        {'number': 4, 'image': 'assets/steps/niyog4.png', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/niyog5.png', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'SAMBONG':[
        {'number': 1, 'image': 'assets/steps/sam3.jpg', 'description': 'Wash the leaves of the sambong  in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/sam2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/sam3.jpg', 'description': 'Put the chop sambong leaves in the pot'},
        {'number': 4, 'image': 'assets/steps/sam4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/sam5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'TSAANG GUBAT':[
        {'number': 1, 'image': 'assets/steps/tsa1.jpg', 'description': 'Wash the leaves of the tsaang-gubat in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/tsa2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/tsa3.jpg', 'description': 'Put the chop leaves of tsaang-gubat in the pot'},
        {'number': 4, 'image': 'assets/steps/tsa4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/tsa5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'ULASIMANG BATO':[
        {'number': 1, 'image': 'assets/steps/ula1.jpg', 'description': 'Wash the leaves of the Ulasimang bato  in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/ula2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/ula3.jpg', 'description': 'Put the chop leaves of Ulasimang bato in the pot'},
        {'number': 4, 'image': 'assets/steps/ula4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/ula5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
      'YERBA BUENA':[
        {'number': 1, 'image': 'assets/steps/yer1.jpg', 'description': 'Wash the leaves of the yerba buena in a clean water. And then chop it.'},
        {'number': 2, 'image': 'assets/steps/yer2.jpg', 'description': 'In a pot, put 2 cups of water'},
        {'number': 3, 'image': 'assets/steps/yer3.jpg', 'description': 'Put the chop leaves of Yerba buena in the pot'},
        {'number': 4, 'image': 'assets/steps/yer4.jpg', 'description': 'Then boil on low heat for 15 minutes. Don’t cover the pot'},
        {'number': 5, 'image': 'assets/steps/yer5.jpg', 'description': 'Then strain it and let it cool for a minute before serving.'},
      ],
    };
    return allStepImages[herbalMedicine] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    children.addAll([
      ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(55),
          bottomRight: Radius.circular(55),
        ),
        child: Image.asset(
          widget.imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.grass,
                  color: Colors.green,
                  size: 35.0,
                ),
                const SizedBox(width: 10.0),
                Text(
                  widget.imageTitle,
                  style: const TextStyle(fontSize: 30.0, color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Text(
              '(${widget.scientificName})',
              style: const TextStyle(fontSize: 24.0, color: Colors.black87, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.imageDescription,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.addDescription,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 10.0),
            Text(
              widget.ailmentList,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the tile
          borderRadius: BorderRadius.circular(15.0), // Border radius for a rounded look
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.3), // Shadow color
              blurRadius: 5,
              offset: const Offset(0, 2), // Changes position of shadow
            ),
          ],
        ),
        child: const ExpansionTile(
          tilePadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          title: Text(
            'Tips on Handling Medicinal Plants / Herbs',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: Text(
                '• If possible, buy herbs that are grown organically - without pesticides.\n'
                    '• Medicinal parts of plants are best harvested on sunny mornings. Avoid picking leaves, fruits or nuts during and after heavy rainfall.\n'
                    '• Leaves, fruits, flowers or nuts must be mature before harvesting. Less medicinal substances are found on young parts.\n'
                    '• After harvesting, if drying is required, it is advisable to dry the plant parts either in the oven or air-dried on screens above ground and never on concrete floors.\n'
                    '• Store plant parts in sealed plastic bags or brown bottles in a cool dry place without sunlight preferably with a moisture absorbent material like charcoal. Leaves and other plant parts that are prepared properly, well-dried and stored can be used up to six months.',
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
        child: Text(
          'Step-by-Step Instructions',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.green
          ),
        ),
      ),
    ]);

    // Display step images and descriptions
    for (Map<String, dynamic> step in stepImages) {
      Widget stepImage = Image.asset(
        step['image'],
        fit: BoxFit.cover,
        width: double.infinity,
        height: 200.0,
      );

      // Add padding to each step image
      stepImage = Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: stepImage,
      );

      // Add the step image to the list of children
      children.add(stepImage);
      // Add description text with "Step X" in bold
      children.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
              children: [
                TextSpan(
                  text: 'Step ${step['number']}: ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                ),
                TextSpan(
                  text: step['description'],
                ),
              ],
            ),
          ),
        ),
      );
    }
    children.addAll([
      const Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Text(
          'Introduction to the DOH approved Sampung (10) Halamang Gamot',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.green,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
      // Video Instruction
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: SizedBox(
          height: 200,
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
      // Text just below the video
      const Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Text(
          'Courtesy: Philippine Institute of Traditional and Alternative Health Care. (PITAHC)',
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.black87,
          ),
        ),
      ),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.imageTitle,
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            _videoPlayerController.pause();
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: children,
        ),
      ),
    );
  }
}