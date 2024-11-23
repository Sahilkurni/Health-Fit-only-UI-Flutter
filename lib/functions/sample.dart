import 'package:flutter/material.dart';

class BicycleDrillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Stack allows layering the icon on top of the card
    return Stack(
      alignment: Alignment.topCenter, // Aligns children to the top center
      children: [
        // Main Card Container
        Container(
          margin: const EdgeInsets.only(
              top:
                  30), // Adds margin at the top to make space for the floating icon
          width: 200, // Sets the width of the card
          padding: const EdgeInsets.all(16), // Adds padding inside the card
          decoration: BoxDecoration(
            color: Colors.white, // Sets background color of the card
            borderRadius:
                BorderRadius.circular(20), // Rounds the card's corners
            boxShadow: [
              // Adds shadow for elevation effect
              BoxShadow(
                color:
                    Colors.grey.withOpacity(0.3), // Shadow color with opacity
                spreadRadius: 5, // Spread radius of shadow
                blurRadius: 10, // Blur radius for softness
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Column takes minimum space
            children: [
              const SizedBox(
                  height:
                      30), // Space to position the icon above the card content

              // Title and Distance Text
              const Text(
                'Bicycle Drill', // Title text
                style: TextStyle(
                  fontSize: 18, // Font size of title
                  fontWeight: FontWeight.bold, // Bold font for emphasis
                ),
              ),
              const SizedBox(height: 5), // Spacing between title and distance text
              const Text(
                '36 km / week', // Weekly distance text
                style: TextStyle(
                  color: Colors.grey, // Grey color for secondary information
                ),
              ),
              const SizedBox(height: 15), // Spacing before progress indicator

              // Progress Indicator Row
              const Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Positions text at both ends of the row
                children: [
                  Text('Progress'), // Progress label
                  Text('45%'), // Percentage completed
                ],
              ),
              const SizedBox(height: 5), // Spacing before the progress bar
              LinearProgressIndicator(
                value: 0.45, // Progress value (45% complete)
                backgroundColor:
                    Colors.grey[300], // Background color of progress bar
                color: Colors.green, // Color for filled portion of progress bar
              ),
              const SizedBox(height: 5), // Spacing before distance covered text

              // Distance Covered Text
              const Align(
                alignment: Alignment.centerLeft, // Aligns text to the left
                child: Text(
                  '17 / 36 km', // Text showing distance covered
                  style:
                      TextStyle(color: Colors.grey), // Grey color for subtlety
                ),
              ),
              const SizedBox(height: 15), // Spacing before days left indicator

              // Days Left Container
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5), // Adds padding around text
                decoration: BoxDecoration(
                  color: Colors.pink[50], // Light pink background color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: const Text(
                  '2 days left', // Days remaining text
                  style: TextStyle(
                    color: Colors.pink, // Pink color for emphasis
                  ),
                ),
              ),
            ],
          ),
        ),

        // Floating Icon Container
        Container(
          padding: const EdgeInsets.all(10), // Padding around the icon
          decoration: const BoxDecoration(
            color: Colors.purple, // Background color for icon container
            shape: BoxShape.circle, // Circular shape for icon background
          ),
          child: const Icon(
            Icons.directions_bike, // Bicycle icon
            color: Colors.white, // Icon color
            size: 30, // Icon size
          ),
        ),
      ],
    );
  }
}
