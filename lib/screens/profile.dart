import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(

      child: CircleAvatar(
        radius: 50,
        child: Icon(
          Icons.person,
          size: 70,
        ),
      ),
    );
  }
}
