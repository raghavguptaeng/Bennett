import 'package:bennett/Graphs/graph.dart';
import 'package:bennett/colors.dart';
import 'package:bennett/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  static String id = '/maionscreen';
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  child: const Text(
                    "Hello",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Enrollment_and_electiveButton(),
                SizedBox(height: 20,),
                HomeDetailCard(height: height, width: width)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeDetailCard extends StatelessWidget {
  const HomeDetailCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height * 0.2,
        width: width * 0.9,
        decoration: container_odd_circularDecor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  totalSeatRow(),total_pref_filled()
                ],
              ),
              Container(
                  width: width*0.35,
                  child: Donut(val1: 90,val2: 10,))
            ],
          ),
        ),
      ),
    );
  }

  Container totalSeatRow() {
    return Container(
      width: width*0.5,
      child: Row(
        children: [
          line,
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Seats Offered",
                style: TextStyle(
                  fontSize: 16,
                  color: grey.withOpacity(0.5),
                  letterSpacing: -1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text('250',style: TextStyle(
                    fontWeight:
                    FontWeight.w600,
                    fontSize: 16,
                    color:darkerText,
                  ),),
                  Text(
                    'seats',
                    textAlign: TextAlign.center,
                    style: kSmallTextStyle
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container total_pref_filled() {
    return Container(
      width: width*0.5,
      child: Row(
        children: [
          line2,
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Prefrences Filled",
                style: TextStyle(
                  fontSize: 16,
                  color: grey.withOpacity(0.5),
                  letterSpacing: -1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text('150',style: TextStyle(
                    fontWeight:
                    FontWeight.w600,
                    fontSize: 16,
                    color:darkerText,
                  ),),
                  Text(
                      'seats',
                      textAlign: TextAlign.center,
                      style: kSmallTextStyle
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

}

class Enrollment_and_electiveButton extends StatelessWidget {
  const Enrollment_and_electiveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "E19CSE258",
            style: TextStyle(color: grey, fontSize: 25),
          ),
          Container(
            // width: width*0.2,
            child: Row(
              children: [
                Text(
                  "Choose Electives",
                  style: TextStyle(color: nearlyDarkBlue),
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: nearlyDarkBlue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
