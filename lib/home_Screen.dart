import 'package:flutter/material.dart';
import 'package:travelapp/post_screen.dart';
import 'package:travelapp/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  final List<String> category = [
    'Best Places',
    'Most Visited',
    'Hotels',
    'Restaurant',
  ];

  final List<Map<String, String>> bestPlace = [
    {
      "cityName": "Jakarta Selatan",
      "bestPlaceName": "M Bloc Space",
      "imagePath": "images/bloc space.jpeg",
    },
    {
      "cityName": "Jakarta Barat",
      "bestPlaceName": "Dancing Goat Coffe",
      "imagePath": "images/dancing goat coffee.jpg",
    },
    {
      "cityName": "Jakarta Pusat",
      "bestPlaceName": "ShopHaus Menteng",
      "imagePath": "images/shopHaus.jpeg",
    },
    {
      "cityName": "Jakarta Timur",
      "bestPlaceName": "Koffie Oetami",
      "imagePath": "images/jaktim.jpg",
    },
    {
      "cityName": "Jakarta Utara",
      "bestPlaceName": "Hours Coffee",
      "imagePath": "images/jakut.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: HomeAppBar(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height:
                        200, // Set the height of the row to ensure visibility
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: bestPlace.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PostScreen(
                                        cityName: bestPlace[index]['cityName']!,
                                        imagePath: bestPlace[index]
                                            ['imagePath']!,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 160,
                                  padding: const EdgeInsets.all(20),
                                  margin: const EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        bestPlace[index]['imagePath']!,
                                      ),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        child: const Icon(
                                          Icons.bookmark_outline,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          bestPlace[index]['bestPlaceName']!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: category.map((item) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: bestPlace.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostScreen(
                                      cityName: bestPlace[index]['cityName']!,
                                      imagePath: bestPlace[index]['imagePath']!,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        bestPlace[index]['imagePath']!),
                                    fit: BoxFit.cover,
                                    opacity: 0.9,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    bestPlace[index]['cityName']!,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Icon(
                                    Icons.more_vert,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                Text(
                                  "10.0",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white);
  }
}
