import 'package:flutter/material.dart';
import 'package:learn_app/util/doctor_card.dart';
import 'package:learn_app/util/icon_box.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TOP BAR SECTIOON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello,',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Jerome Bell',
                          style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100], shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Image.asset('lib/images/avatar_n.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //BANNER CARD SECTION
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 224, 244, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('lib/images/doctor.png'),
                        width: 200,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel ?',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(50, 49, 58, 1)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Text('Fill out your medical \ncard  right now'),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(138, 134, 226, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //    SEARCH INPUT SECTION
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(239, 239, 255, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 29,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'How can we help you',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      IconBox(
                        text: 'Dentis',
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          color: Color.fromRGBO(138, 134, 226, 1),
                        ),
                      ),
                      IconBox(
                        text: 'Surgeon',
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Color.fromRGBO(138, 134, 226, 1),
                        ),
                      ),
                      IconBox(
                        text: 'Thetre',
                        icon: Icon(
                          Icons.chair,
                          color: Color.fromRGBO(138, 134, 226, 1),
                        ),
                      ),
                      IconBox(
                        text: 'Doctor',
                        icon: Icon(
                          Icons.shower_outlined,
                          color: Color.fromRGBO(138, 134, 226, 1),
                        ),
                      ),
                      // IconBox(),
                      // IconBox(),
                      // IconBox(),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                //  DOCTORS SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Doctor List',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DoctorCard(
                        name: 'Dr.  Arlene McCoy',
                        iconColor: Color.fromRGBO(197, 203, 246, 1),
                        imagePath: 'lib/images/doc_f.png',
                      ),
                      DoctorCard(
                        name: 'Dr.  Allbert Flores',
                        iconColor: Color.fromRGBO(213, 199, 252, 1),
                        imagePath: 'lib/images/doctor.png',
                      ),
                      DoctorCard(
                        name: 'Dr.  Arlene McCoy',
                        iconColor: Color.fromRGBO(213, 199, 252, 1),
                        imagePath: 'lib/images/avatar_n.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
