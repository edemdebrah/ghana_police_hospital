import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  Color? bgColor;
  String headerImage;
  String departmentName;
  String departmentDescr;
  void Function()? onTap;
  ServicesList({
    super.key,
    required this.bgColor,
    required this.headerImage,
    required this.departmentName,
    required this.departmentDescr,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: EdgeInsets.only(
        left: 20,
        bottom: 50,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: [
          //image of department
          Container(
            decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color:
                //         Colors.black.withOpacity(0.4), // Dark shadow with opacity
                //     offset: Offset(5, 5),
                //     blurRadius: 15,
                //     spreadRadius: 2,
                //   ),
                // ],
                ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                15,
              ),
              child: Image.asset(
                headerImage,
                width: 200,
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          //Name of department
          Text(
            departmentName,
            style: TextStyle(
              fontSize: 20,
              color: Colors.brown,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Description of Department
          Text(
            departmentDescr,
            style: TextStyle(
              fontSize: 14,
              color: Colors.brown,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //button to launch / open a department
        ],
      ),
    );
  }
}
