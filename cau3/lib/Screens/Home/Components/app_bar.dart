import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const menuItems = [
      "Home",
      "About",
      "Pricing",
      "Contact",
      "Login",
      "Get Started",
    ];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              height: 15,
              alignment: Alignment.topCenter,
            ),
            const SizedBox(width: 5),
            Text(
              "Foodi".toUpperCase(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            PopupMenuButton<String>(
              itemBuilder: (context) {
                return menuItems.map((menuItem) {
                  return PopupMenuItem<String>(
                    value: menuItem,
                    child: Text(menuItem),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
    );
  }
}
