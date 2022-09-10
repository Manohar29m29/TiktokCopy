import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final icon;
  final String number;

  MyButton({this.icon, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(

        children: [
          Image.asset(icon, height: icon == 'assets/icons/plussaccount.png'?60: 35, ),
          // SizedBox(height: 0,),
          Text(number, style: TextStyle(color: Colors.white),)
        ],

      ),
    );
  }
}