import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
                Icons.location_on,
                color: Colors.redAccent,
              ),
              Text(
                "Jakarta, Indonesia",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )
          ],
        ),
      ),
    );
  }
}
