import 'package:flutter/material.dart';
import 'package:responsive_ui/functions/all_in_one_functions.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: AppBarr()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: height,
          // width: width,
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              color: Colors.grey[350]),
          child: Row(
            children: [
              // Container(
              //   // for vertical icons
              //   height: 800,
              //   width: 80,
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.black),
              //   ),
              // ),
              Expanded(
                  child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // for overveiw
                            height: 550,
                            width: 700,
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.black)),
                            child: Overview(),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              // for daily jogging
                              height: 250,
                              width: 450,
                              // decoration: BoxDecoration(
                              //     border: Border.all(color: Colors.black)),
                              child: DailyJogging(),
                            ),
                            Container(
                              // for my jogging
                              height: 300,
                              width: 450,
                              // decoration: BoxDecoration(
                              //     border: Border.all(color: Colors.black)),
                              child: MyJogging(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            // for bicycle drill
                            height: 237,
                            width: 370,
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.black)),
                            child: BicycleDrill(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // for jogging hero
                            height: 237,
                            width: 370,
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.black)),
                            child: JoggingHero(),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            // healthhy busy
                            height: 237,
                            width: 370,
                            // decoration: BoxDecoration(
                            //     border: Border.all(color: Colors.black)),
                            child: HealthyBusy(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              // Container(
              //   height: 800,
              //   width: 300,
              //   decoration:
              //       BoxDecoration(border: Border.all(color: Colors.black)),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
