import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyExpandableList(),
    );
  }
}

class MyExpandableList extends StatefulWidget {
  const MyExpandableList({super.key});

  @override
  _MyExpandableListState createState() => _MyExpandableListState();
}

class _MyExpandableListState extends State<MyExpandableList> {
  List<MyItem> items = [
    MyItem('Asthma', [
      'Asthma is a disease of the bronchial tubes or airways. Symptoms are a feeling of tightness in the chest, shortness of breath, wheezing and coughing.',
      'Herbal Medication',
      """1. Talampunay leaves
    Roll 2 dried leaves.
Use as a cigarette every 6 hours.\n
2. Kalatsutsi leaves
    Roll 2 dried leaves.
Use as a cigarette, one in the morning and one in the evening.
        """
    ]),
    MyItem('Cough', [
      'Productive cough due to congestions and bronchitis. ',
      'Herbal Medication',
      """1.	Lagundi leaves 
    Boil 4 tablespoons of chopped dried leaves or 6 tablespoons of chopped fresh leaves in 2 glasses of water for 15 minutes\n
Dosage: 
- Adults: ½ cup, 3 times a day 
- Children: (Babies) 1 teaspoon, 3 times a day 
   (2-6 yrs.) 2 tablespoons, 3 times a day 
   (7-12 yrs.) ¼ cup, 3 times a day 
\n
2.	Oregano leaves 
    Boil 1 cup of chopped fresh leaves in 2 glasses of water for 15 minutes.\n
Dosage:
- Adults: ½ cup, 3 times a day 
- Children: (Babies) 1 teaspoon, 3 times a day 
  (2-6 yrs.) 2 tablespoons, 3 times a day 
  (7-12 yrs.) ¼ cup, 3 times a day 
          """
    ]),
    MyItem('Fever', [
      'A fever occurs when there is an elevation of the body temperature.',
      'Herbal Medications for Fever Due to Viral Infections',
      """1.	Vinegar
    Put 2 tablespoons of vinegar in a basin of cold water. 
Use this for making vinegar compress on the forehead if ice is not available. \n
2.	Balimbing leaves
    Boil 2 cups of chopped leaves in a gallon of water for 10 minutes. Strain. Cool for 2 hours 
Use this in making a cold compress if ice water is not available. \n
3.	Kamias leaves 
    Boil 3 cups of chopped fresh leaves in one gallon of water for 15 minutes. Strain. 
Use this decoction for cold or hot sponge bath. 
""",
      """Internal Medications
    Use one of the following herbal medications to help lower the fever.
        """,
      """1.	Tagulinaw plant
    Boil 1 cup of chopped fresh leaves with the whole plant in 2 glasses of water for 15 minutes. 
Dosage:
- Adults: 1 cup, every 4 hours 
- Children: (Babies) 1 tbsp., every 4 hours 
  (2-6 yrs.) cup, every 4 hours 
  (7-12 yrs.) ½ cup, every 4 hours \n
2.	Okra seeds
    Roast dried seeds and grind or pound fine Boil ½ cup of the ground seeds in 2 glasses of water for 15 minutes Cool and strain. \n
Dosage: 
- Adults: 1 cup, 3 times a day, every after meals 
- Children: (Babies) 1 tbsp., 3 times a day, every after meals 
  (2-6 yrs.) cup, 3 times a day, every after meals 
  (7-12 yrs.) ½ cup, 3 times a day, every after meals 
3.	Lagundi leaves
    Boil 4 tablespoons of chopped dried leaves or 6 tablespoons of fresh chopped leaves in 2 glasses of water for 15 minutes. \n
Dosage:
- Adults: 1 cup, every 4 hours 
- Children. (Babies) 1 tbsp, every 4 hours 
  (7-12 yrs) ½ cup, every 4 hours
"""
    ]),
    MyItem('Headache(due to sinusitis)', [
      'Sinusitis is the inflammation of any of the paranasal sinuses, as the frontal, maxillary, or ethmoidal sinuses. ',
      'Herbal Medications',
      """1.	Mansanilya leaves 
    Crush 5 fresh leaves and drop 2 drops of coconut oil on them. Heat the leaves directly over the fire without burning them. 
While still hot, apply directly over the forehead for the frontal sinusitis and over the cheeks near the nose for the maxillary sinusitis. Apply in the evening at bedtime for 30 minutes. \n
2.	Mayana leaves
    Heat 10 fresh leaves over the fire. Heat only 4 leaves at a time.
Apply directly while still hot over the forehead for frontal sinusitis, and over the cheeks near the nose for maxillary sinusitis. Replace the cold leaves with the newly heated ones till all 10 leaves are used up. Do this 2 times a day. \n
3.	Sambong leaves 
    Crush 5 leaves and heat directly over open fire, one at a time. 
Apply directly while still hot over the forehead for frontal sinusitis and over the cheeks for maxillary sinusitis. Replace the cool leaf with a newly heated one till all 5 leaves are used up. Do this 2 times a day.
"""
    ]),
    MyItem('Mosquito Bites', [
      'Infected mosquito bites become swollen and painful.',
      'Herbal Medications',
      """1.	Kataka-taka leaves 
    Pound 5-10 leaves and extract the juice. 
Apply the juice directly on the infected bites, 3 times a day. \n
2.	Atis-unripe fruit and seeds 
    Pound and extract the juice from one unripe fruit.
Apply the juice directly on the infected bites. 3 times a day.
"""
    ]),
    MyItem('Sore Throat', [
      ' A sore throat is a congestion or inflammation in the throat due to tonsillitis, pharyngitis or laryngitis.',
      'Herbal Medications',
      """1.	Luya or ginger lozenges 
    Wash and peel a small piece of ginger. 
Chew slowly for a few minutes. Swallow the juice. Or, keep a small piece in the mouth, chewing it little by little.\n
2.	Sabila leaves
    Wash the leaf and cut in ½ inch sizes. 
Keep in the mouth all day, swallowing the juice. Take another piece when there is no more juice. \n
3.	Bawang lozenges 
  Wash one piece and peel. 
Keep in the mouth for some time, chewing it slow. Swallow juice.
"""
    ]),
    MyItem('Sprained Ankle or Wrist', [
      'A sprain is the wrenching of a joint, producing a stretching or laceration of the ligaments.',
      'Herbal Medications',
      """1.	Sabila leaves poultice (panapal) 
    Pound 2 to 3 fresh leaves. 
Apply directly as poultice on the ankle or wrist for 30 minutes, 3 times a day. Use a bandage to hold the poultice in place.\n
2.	Kamantigul stems and leaves poultice (panapal) 
    Pound 2 stems with leaves. 
Apply directly as poultice for 30 minutes, 3 times a day. Use a bandage to hold the poultice in place. \n
3.	Kakawate leaves poultice (panapal)
  Crush 10 leaves. 
Apply directly as poultice for 30 minutes, 3 times a day. Use a bandage to hold the poultice in place. 
4.	Mayana leaves poultice (panapal)
  Crush 10 leaves. 
Apply directly as poultice for 10 minutes, 3 times a day. 5. Kataka-taka leaves poultice Crush 10 leaves Apply directly as poultice for 30 minutes, 3 times a day.
"""
    ]),
    MyItem('Sunburn or Prickly Heat', [
      'Sunburn or erythema is a redness of the skin occurring in patches of variable sizes and shapes due to excessive exposure to sunlight. ',
      'Herbal Medications',
      """1.	Alusiman leaves 
    Extract juice from the leaves. 
Apply on the prickly heat after the starch bath. \n
2.	Bayabas leaves 
    If there is an infection, boil 1 cup of chopped leaves in one gallon of water. Add 2 gallons of cold water. 
Bathe with this decoction.
"""
    ]),
    MyItem('Measles and/or Skin Rashes ', [
      'Measles is an acute viral infection characterized by morbilliform eruptions with catarrhal inflammation of the conjunctiva and the air passages. ',
      'Herbal Medications',
      """1.	Kamoteng kahoy flour for starch bath 
    Remove peelings and grate the tuber. Extract the juice, add water enough for one baby bath tub and boil.
Soak the baby in the starchy water for 10-15 minutes but don't rub the skin. May apply directly as powder on the skin.
"""
    ]),
  ];

  late List<bool> expansionStates;

  @override
  void initState() {
    super.initState();
    expansionStates = List<bool>.filled(items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.green.shade700, // Adjust the color as needed
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Common Ailments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white, // Adjust the color as needed
                  ),
                ),
                Text(
                  'List of common ailments and their herbal medication ',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white, // Adjust the color as needed
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 1.0,
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.3),
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ExpansionTile(
                    title: Text(
                      items[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    iconColor: Colors.green,
                    tilePadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
                    onExpansionChanged: (bool expanding) {
                      setState(() {
                        expansionStates[index] = expanding;
                      });
                    },
                    initiallyExpanded: expansionStates[index],
                    children: items[index].subItems.map((subItem) {
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: ListTile(
                          title: Text(
                            subItem,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 16.0,
                              height: 1.5,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MyItem {
  String title;
  List<String> subItems;

  MyItem(this.title, this.subItems);
}
