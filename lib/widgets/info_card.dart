import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String imagePath, name, description;

  const InfoCard(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5.5,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.purple, width: 2),
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Row(
          children: [_image(), _content()],
        ),
      ),
    );
  }

  Widget _image() {
    return Expanded(
      flex: 2,
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _content() {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_text(name), _text(description)],
      ),
    );
  }

  Widget _text(title) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'Lato'),
    );
  }
}
