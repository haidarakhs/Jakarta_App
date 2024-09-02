import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  PostBottomBar({super.key});

  final List<Map<String, String>> bestPlace = [
    {
      "cityName": "Jakarta Selatan",
      "bestPlaceName": "M Bloc Space",
      "imagePath": "images/bloc space.jpeg",
    },
    {
      "cityName": "Jakarta Barat",
      "bestPlaceName": "Dancing Goat Coffee",
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
    // Assuming you want to display the first item in bestPlace
    final place = bestPlace[0]; // Accessing the first item for demo purposes
    final imagePath = place['imagePath']!;

    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place['cityName']!,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          height:
                              100, // Adjust the height of the image if needed
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Space between images
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          height:
                              100, // Adjust the height of the image if needed
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            height: 90,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                opacity: 0.4,
              ),
            ),
            child: const Text(
              "10++",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
