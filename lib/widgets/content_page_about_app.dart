import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 8,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _headCenterText("In App Purchases"),
              _circleAndText(
                  "In our Application, you can shop online \n very easy "),
              _circleAndText("We have variety of items you can easily \n shop"),
              _circleAndText(
                  "Also you can add your favorite item to  \n  buy it again easy"),
              _circleAndText("We can see all item you add into favorite "),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              _headCenterText("Contact Us"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _contactCell("assets/images/WhatsApp.jpg"),
                  _contactCell("assets/images/facebook.webp"),
                  _contactCell("assets/images/gmail.png"),
                  _contactCell("assets/images/linkedIn.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _contactCell(imagePath, {onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }

  Widget _circleAndText(title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.orange,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontFamily: 'Lato'),
          )
        ],
      ),
    );
  }

  Widget _headCenterText(title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.purple,
            fontFamily: 'Lato'),
      ),
    );
  }
}
