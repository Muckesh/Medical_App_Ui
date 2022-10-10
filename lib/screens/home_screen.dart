import 'package:flutter/material.dart';
import 'package:medical_app_ui/widgets/DoctorCard.dart';

import '../widgets/CategoryCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.deepPurple,
          elevation: 0.0,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: "Calendar"),
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                // app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Jerome Bell",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Icon(
                        Icons.person_rounded,
                        size: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                // card
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // picture
                        Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        // Texts
                        Column(
                          children: [
                            Text(
                              "How do you feel?",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fill out your medical",
                              style: TextStyle(
                                fontSize: 18,
                                //fontWeight: FontWeight.bold,
                                color: Colors.deepPurple[400],
                              ),
                            ),
                            Text(
                              "card right now",
                              style: TextStyle(
                                fontSize: 18,
                                //fontWeight: FontWeight.bold,
                                color: Colors.deepPurple[400],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 40.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text("Get Started"),
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.deepPurple,
                            //     padding: EdgeInsets.only(
                            //         left: 40, right: 40, top: 10, bottom: 10),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // search
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                      prefixIcon: Icon(Icons.search_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // categories
                Container(
                  height: 80,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(
                        img: 'assets/images/tooth1.png',
                        category: 'Dentist',
                      ),
                      CategoryCard(
                        img: 'assets/images/surgeon1.png',
                        category: 'Surgeon',
                      ),
                      CategoryCard(
                        img: 'assets/images/therapist.png',
                        category: 'Therapist',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // doctor list
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor List",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // doc list card
                Container(
                  height: 250,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      DoctorCard(
                          img: "assets/images/doc2.jpg",
                          rating: "4.9",
                          docName: "Ariene McCoy",
                          specialist: "Therapist",
                          experience: "7"),
                      DoctorCard(
                          img: "assets/images/doc3.jpg",
                          rating: "4.8",
                          docName: "Albert Flores",
                          specialist: "Surgeon",
                          experience: "5"),
                      DoctorCard(
                          img: "assets/images/doc1.jpg",
                          rating: "4.7",
                          docName: "Anna Brown",
                          specialist: "Dentist",
                          experience: "6"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
