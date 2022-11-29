import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  final String text;
  final Icon icon;

  const IconBox({
    Key? key,
    required this.text,
    required  this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Color.fromRGBO(239, 239, 255, 1),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Text(
                ' ' + text,
                style: TextStyle(
                    fontSize: 16
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
