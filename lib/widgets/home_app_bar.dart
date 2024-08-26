import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Aksi saat ikon diklik
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang container
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.5), // Warna bayangan dengan sedikit transparansi
                    blurRadius: 6, // Ukuran blur bayangan
                    offset: Offset(0, 3), // Posisi bayangan
                  ),
                ],
                borderRadius: BorderRadius.circular(
                    15), // Sudut container yang melengkung
              ),
              child: Icon(
                Icons.sort_rounded,
                size: 28, // Ukuran ikon
                color: Colors.black, // Warna ikon yang kontras
              ),
            ),
          ),
          const Row(
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
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
