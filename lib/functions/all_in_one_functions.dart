import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart'; // For MaterialCommunityIcons
// import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // For FontAwesomeIcons

class AppBarr extends StatefulWidget {
  const AppBarr({super.key});

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Primary",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  Text("Dashboard",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 118, 100, 222))),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  const Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.amber,
                  )
                ],
              ),
            ),
          ],
        ),

        // appBar: AppBar(
        //   title: const Expanded(
        //     child: Row(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
        //           child: Column(
        //             children: [
        //               Text(
        //                 "Primary",
        //                 style: TextStyle(
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.blueGrey),
        //               ),
        //               Text("Dashboard",
        //                   style: TextStyle(
        //                       fontSize: 35,
        //                       fontWeight: FontWeight.bold,
        //                       color: Color.fromARGB(255, 118, 100, 222))),
        //             ],
        //           ),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.fromLTRB(700.0, 0.0, 0.0, 0.0),
        //           child: Icon(
        //             Icons.search,
        //             size: 30,
        //           ),
        //         ),
        //         Text(
        //           "Search",
        //           style: TextStyle(
        //               fontSize: 30,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.blueGrey),
        //         ),
        //         SizedBox(
        //           width: 20,
        //         ),
        //         CircleAvatar(
        //           backgroundColor: Colors.amber,
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

class BicycleDrill extends StatefulWidget {
  const BicycleDrill({super.key});

  @override
  State<BicycleDrill> createState() => _BicycleDrillState();
}

class _BicycleDrillState extends State<BicycleDrill> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
          alignment: Alignment.topCenter, // Aligns children to the top center
          children: [
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => BicycleDrill()),
                // );
              },
              child: Container(
                margin: EdgeInsets.only(top: 30),
                // width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(color: Colors.black),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 15, spreadRadius: 3, color: Colors.grey)
                  ],
                ),
                child: const Column(
                  // mainAxisSize: MainAxisSize.min, // Column takes minimum space
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Bicycle Drill",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "36km / Weeks",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Progress'),
                              Text('45%'),
                            ],
                          ),
                          LinearProgressIndicator(
                            value: 0.45,
                            color: Colors.green,
                            backgroundColor: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '17 / 36 km',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10), // Padding around the icon
              decoration: BoxDecoration(
                color: Colors.purple, // Background color for icon container
                shape: BoxShape.circle, // Circular shape for icon background
              ),
              child: Icon(
                Icons.directions_bike, // Bicycle icon
                color: Colors.white, // Icon color
                size: 40, // Icon size
              ),
            ),
          ]),
    );
  }
}

// import 'package:flutter/material.dart';

class DailyJogging extends StatefulWidget {
  const DailyJogging({super.key});

  @override
  State<DailyJogging> createState() => _DailyJoggingState();
}

class _DailyJoggingState extends State<DailyJogging> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Container(
        // for daily jogging
        height: 150,
        width: 450,
        // decoration: BoxDecoration(
        // border: Border.all(color: Colors.black)),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DailyJogging()),
            );
          },
          child: Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 100, 222),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.run_circle_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Daily Jogging",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    ));
  }
}

// import 'package:flutter/material.dart';

class Freinds extends StatefulWidget {
  const Freinds({super.key});

  @override
  State<Freinds> createState() => _FreindsState();
}

class _FreindsState extends State<Freinds> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              // for freinds and view all
              width: 300,
              height: 100,
              // decoration:
              // BoxDecoration(border: Border.all(color: Colors.black)),
              child: Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "Freinds",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("View All"))
                ],
              )),
            ),
          ),
          SizedBox(
            // for activities and online
            width: 300,
            height: 100,
            // decoration:
            // BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 183, 100, 222),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Acitivities")),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Online")),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            // for list of freinds
            width: 300,
            height: 400,
            // decoration:
            // BoxDecoration(border: Border.all(color: Colors.black)),
            child: Expanded(
              child: SizedBox(
                width: 300,
                height: 675, // Specify a height here, or adjust as needed
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pink[100],
                      ),
                      title: const Text("Friend 1"),
                      subtitle: const Text("about friend"),
                      trailing: const Icon(Icons.message),
                    ),
                    // Add more ListTiles as needed
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            // for veiw map
            width: 300,
            height: 198,
            // decoration:
            // BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 30,
                    ),
                    const Text(
                      "Live Map",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("View",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)))
                  ],
                ),
                Image.asset(
                  "assets/maps.jpg",
                  height: 150,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

// import 'package:flutter/material.dart';

class HealthyBusy extends StatefulWidget {
  const HealthyBusy({super.key});

  @override
  State<HealthyBusy> createState() => _HealthyBusyState();
}

class _HealthyBusyState extends State<HealthyBusy> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HealthyBusy()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
                ],
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Healthy Busy",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "36000steps / Weeks",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Progress'),
                            Text('45%'),
                          ],
                        ),
                        LinearProgressIndicator(
                          value: 0.45,
                          color: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '17 / 36 km',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 118, 100, 222),
              shape: BoxShape.circle),
          child: const Icon(
            MaterialCommunityIcons.shoe_print,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}

class JoggingHero extends StatefulWidget {
  const JoggingHero({super.key});

  @override
  State<JoggingHero> createState() => _JoggingHeroState();
}

class _JoggingHeroState extends State<JoggingHero> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.topCenter,
      children: [
        InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => JoggingHero()),
            // );
          },
          child: Container(
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
              ],
            ),
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Jooging Hero",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "12km / Month",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Progress'),
                          Text('13%'),
                        ],
                      ),
                      LinearProgressIndicator(
                        value: 0.13,
                        color: Colors.green,
                        backgroundColor: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '17 / 36 km',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10), // Padding around the icon
          decoration: const BoxDecoration(
            color: Colors.purple, // Background color for icon container
            shape: BoxShape.circle, // Circular shape for icon background
          ),
          child: const Icon(
            Icons.run_circle_outlined,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  // this is for dropdown button
  List<String> period = ["Daily", "Weekly", "Monthly", "Yearly"];
  String? selected = "Daily";

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      // for overveiw
      height: 450,
      width: 700,
      // decoration: BoxDecoration(
      // border: Border.all(color: Colors.black)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Overview()),
          );
        },
        child: Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 118, 100, 222),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      child: Text(
                        "Overview",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                      child: DropdownButton(
                        value: selected,
                        items: period
                            .map((periods) => DropdownMenuItem(
                                value: periods,
                                child: Text(
                                  periods,
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )))
                            .toList(),
                        onChanged: (periods) {
                          setState(() {
                            selected = periods;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    ));
  }
}

class VerticalAppBar extends StatefulWidget {
  const VerticalAppBar({super.key});

  @override
  State<VerticalAppBar> createState() => _VerticalAppBarState();
}

class _VerticalAppBarState extends State<VerticalAppBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Container(
          child: Container(
            // for vertical icons
            height: 800,
            width: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 118, 100, 222),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Notificationss()),
                      // );
                    },
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                      size: 40,
                    )),
                IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Home()),
                    // );
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Home()),
                    // );
                  },
                  icon: const Icon(
                    Icons.file_open,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bar_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.stacked_line_chart,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                      size: 40,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyJogging extends StatefulWidget {
  const MyJogging({super.key});

  @override
  State<MyJogging> createState() => _MyJoggingState();
}

class _MyJoggingState extends State<MyJogging> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      // for my jogging
      height: 300,
      width: 450,
      // decoration: BoxDecoration(
      // border: Border.all(color: Colors.black)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyJogging()),
          );
        },
        child: Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 208, 52, 104),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(blurRadius: 15, spreadRadius: 3, color: Colors.grey)
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 227, 91, 136),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.run_circle_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "My Jogging",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Time",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 253, 147, 182),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "748 hr",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "July",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 253, 147, 182),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    ));
  }
}
