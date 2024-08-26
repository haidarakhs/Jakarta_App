import 'package:flutter/material.dart';

class  PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20), // Tambahkan const untuk menghindari kesalahan tipe data
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26, // Ubah warna shadow agar lebih terlihat
                    blurRadius: 6,
                  ),
                ],
              ),
              child: const Icon(Icons.arrow_back), // Tambahkan konten seperti ikon
            ),
          ),
        ],
      ),
    );
  }
}
