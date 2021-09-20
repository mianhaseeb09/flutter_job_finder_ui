import 'package:flutter/material.dart';

class IconsText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconsText({Key? key, required this.icon, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: Colors.yellow,),
        const SizedBox(width: 10,),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey
          ),
        )
      ],
    );
  }
}
