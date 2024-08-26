import 'package:flutter/material.dart';
import 'package:travelapp/widgets/post_app_bar.dart';
import 'package:travelapp/widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget {
  final String cityName;
  final String imagePath;

  const PostScreen({super.key, required this.cityName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang
          Positioned.fill(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: PostAppBar(),
          ),
         ],
      ),
      bottomNavigationBar: PostBottomBar(),
    );

  }
}
