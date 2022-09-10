import 'package:flutter/material.dart';
import 'package:shop_app/widgets/content_page_about_app.dart';

class AboutApplicationScreen extends StatelessWidget {
  const AboutApplicationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'About Application',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.logout),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [_infoCard(context), const ContentPage()],
            )
          ],
        ),
      ),
    );
  }

  Widget _infoCard(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.2,
      color: Colors.purple.withOpacity(.5),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Information",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
