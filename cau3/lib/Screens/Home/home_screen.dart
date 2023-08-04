import 'package:flutter/material.dart';
import 'package:bai3/Screens/Home/Components/app_bar.dart';
import 'package:bai3/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Check the device's orientation to determine the image aspect ratio
          bool isPortrait = orientation == Orientation.portrait;
          String imagePath = isPortrait
              ? "assets/images/e2cf498d160ac5549c1b.jpg" // Use the portrait image
              : "assets/images/bg.png"; // Use the landscape image

          return FractionallySizedBox(
            widthFactor:  01.0,  // Set the image's width to match the container's width
            heightFactor: 01.0 , // Adjust height for portrait and landscape
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    Body(),
                    // Add any other widgets here as needed
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
