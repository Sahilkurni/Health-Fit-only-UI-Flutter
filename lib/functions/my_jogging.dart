import 'package:flutter/material.dart';

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
