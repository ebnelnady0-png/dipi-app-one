import 'package:flutter/material.dart';

import 'BigCounter.dart';
import 'Custom_App_button.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.name,
    this.price,
    this.unit,
    required this.description,
  });

  final String image;
  final String name;
  final num? price;
  final String? unit;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(image, height: 200),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: .w700,
                          fontSize: 24,
                          color: Color(0xff6D3805),
                        ),
                      ),
                    ],
                  ),
                  if (price != null) SizedBox(height: 10),
                  if (price != null)
                    Row(
                      children: [
                        Text(
                          "\$$price ",
                          style: TextStyle(
                            fontWeight: .w400,
                            fontSize: 24,
                            color: Color(0xff6D3805),
                          ),
                        ),
                        Text(
                          "/$unit",
                          style: TextStyle(
                            fontWeight: .w400,
                            fontSize: 16,
                            color: Color(0xff6D3805),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 30),
                  Text(
                    description,
                    style: TextStyle(
                      fontWeight: .w400,
                      fontSize: 14,
                      color: Color(0xff6D3805),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                BigCounter(),
                Icon(Icons.favorite_border, color: Color(0xffFF5E00), size: 30),
              ],
            ),
            SizedBox(height: 50),
            CustomAppButton(text: "Add To Cart"),
          ],
        ),
      ),
    );
  }
}