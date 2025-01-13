import 'package:flutter/material.dart';
import 'package:ghana_police_hospital/utils/glass_button.dart';
import 'package:ghana_police_hospital/utils/services_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //welcome user section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Edem Debrah',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),

              //hospital card -> how can we help?
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        child: Image.asset('lib/images/patient.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How do you feel?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Fill out the medical form to get help now',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //button for How do you feel?
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.brown[600],
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                              ),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              ),

              SizedBox(
                height: 25,
              ),
              //search bar for user to search a service.
              Container(
                padding: EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  border: Border.all(
                    color: Colors.brown.withOpacity(0.8),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search a Service',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                //color: Colors.brown,
                //height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ServicesList(
                      bgColor: Colors.red[200],
                      headerImage: "lib/images/emergency2.jpg",
                      departmentName: 'EMERGENCY DEPARTMENT',
                      departmentDescr: 'departmentDescr',
                      onTap: () {},
                    ),
                    ServicesList(
                      bgColor: Colors.amber[200],
                      headerImage: "lib/images/emergency.jpg",
                      departmentName: 'OUT-PATIENT DEPARTMENT',
                      departmentDescr: 'departmentDescr',
                      onTap: () {},
                    ),
                    ServicesList(
                      bgColor: Colors.purple[200],
                      headerImage: "lib/images/surgery2.jpeg",
                      departmentName: 'SURGERY DEPARTMENT',
                      departmentDescr: 'departmentDescr',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
