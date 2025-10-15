import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView(
      {super.key,
        required this.imageUrl,
        required this.name,
        required this.price,
        required this.rating});

  final String imageUrl;
  final String name;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: 90,
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 80,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      name,
                      style: const TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(price),
                    SizedBox(height: 2),
                    Text(rating)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}