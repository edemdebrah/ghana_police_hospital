import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text('GHANA POLICE HOSPITAL'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //search bar for user to search a service.
            Container(
              padding: EdgeInsets.all(
                25,
              ),
              decoration: BoxDecoration(
                color: Colors.brown[100],
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
            )
          ],
        ),
      ),
    );
  }
}
