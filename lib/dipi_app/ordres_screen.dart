import 'package:flutter/material.dart';

import 'OrderItem.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final List<int> orders = [345, 345, 347];
  final List<String> states = ["Delivered", "Cancelled", "Delivered"];
  final List<TextStyle> styles = [
    TextStyle(color: Color(0xff5EC401), fontSize: 14, fontWeight: .w400),
    TextStyle(color: Color(0xffF2110D), fontSize: 16, fontWeight: .w400),
    TextStyle(color: Color(0xff5EC401), fontSize: 14, fontWeight: .w400),
  ];
  final List<String> dates = [
    "October 26, 2014",
    "October 14, 2016",
    "July 26, 2017",
  ];
  final List<int> prices = [700, 452, 281];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Orders",
            style: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 24,
              fontWeight: .w700,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "History"),
            ],
            dividerHeight: .5,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsetsGeometry.symmetric(horizontal: 90),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              borderSide: BorderSide(width: 3, color: Color(0xffFF5E00)),
            ),
            labelStyle: TextStyle(
              color: Color(0xffFF5E00),
              fontSize: 20,
              fontWeight: .w400,
            ),
            unselectedLabelStyle: TextStyle(
              color: Color(0xff6D3805),
              fontSize: 20,
              fontWeight: .w400,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "No orders ongoing",
                style: TextStyle(color: Color(0xff6D3805), fontSize: 25),
              ),
            ),
            ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    OrderItem(
                      order: orders[index],
                      state: states[index],
                      style: styles[index],
                      date: dates[index],
                      price: prices[index],
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}