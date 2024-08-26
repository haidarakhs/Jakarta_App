import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
   backgroundColor:  Colors.transparent,
   index: 2,
   items: const[
    Icon(Icons.person_2_outlined, size: 30,),
    Icon(Icons.favorite_outlined, size: 30,),
    Icon(Icons.home, size: 30,

    ),
    Icon(Icons.location_city_outlined, size: 30,),
    Icon(Icons.list, size: 30,)
   ],
    );
  }
}