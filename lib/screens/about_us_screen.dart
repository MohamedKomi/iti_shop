import 'package:flutter/material.dart';
import 'package:shop_app/widgets/info_card.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'About Us',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          InfoCard(
              imagePath: "assets/images/amira.jpg",
              name: 'Amira Ebrahim Mohamed Abd Ellatef,',
              description:
                  'Faculty of computer sciences , Mansoura University'),
          InfoCard(
              imagePath: "assets/images/esraa.jpg",
              name: 'Esraa Nabil Mohammed Abd EL ghany ,',
              description:
                  'Faculty of computer sciences , Mansoura University'),
          InfoCard(
              imagePath: "assets/images/essam.jpg",
              name: 'Essam Said Al-Sayed Shalaby ,',
              description:
                  'Faculty of computer and systems engineer , Zagazig University'),
          InfoCard(
              imagePath: "assets/images/mohammed.jpg",
              name: 'Mohamed Wael Komi Eldeeb ,',
              description: 'Faculty of computer sciences , Zagazig University'),
        ],
      ),
    );
  }
}
