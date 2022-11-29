import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final Color iconColor;
  final String imagePath;
  final String name;

  const DoctorCard({
    Key? key,
    required this.iconColor,
    required this.imagePath,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 205,
        width: 170,
        decoration: BoxDecoration(
            color: Color.fromRGBO(239, 239, 255, 1),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: iconColor,
                    shape: BoxShape.circle
                ),
                child: Padding(
                  padding: EdgeInsets.only(top:15),
                  child: Image.asset(imagePath),
                ),
              ),
              SizedBox(
                height: 18,
              ),
               Text(
                name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 5,),
              const  Text(
                'Therapist, 7 y.e',
                style: TextStyle(
                    color: Colors.grey
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
