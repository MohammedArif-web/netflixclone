import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Image.asset(
            "lib/assets/images/avatar.png",
            height: 25,
            width: 25,
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
