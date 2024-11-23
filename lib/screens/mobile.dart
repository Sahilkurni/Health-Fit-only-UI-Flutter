import 'package:flutter/material.dart';
import 'package:responsive_ui/functions/all_in_one_functions.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: AppBarr()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.grey[350]),
            child: Column(
              children: [
                Container(
                  // for overveiw
                  height: 450,
                  width: width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Overview(),
                ),
                Column(
                  children: [
                    Container(
                      // for daily jogging
                      height: 250,
                      width: width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: DailyJogging(),
                    ),
                    Container(
                      // for my jogging
                      height: 300,
                      width: width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: MyJogging(),
                    ),
                  ],
                ),
                Container(
                  // for bicycle drill
                  height: 237,
                  width: width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: BicycleDrill(),
                ),
                Container(
                  // for jogging hero
                  height: 237,
                  width: width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: JoggingHero(),
                ),
                Container(
                  // healthhy busy
                  height: 237,
                  width: width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: HealthyBusy(),
                ),
                Container(
                  height: 800,
                  width: width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Freinds(),
                )
              ],
            )),
      ),
    );
  }
}
