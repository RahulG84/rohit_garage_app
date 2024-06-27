import 'package:flutter/material.dart';

class GarageServices extends StatelessWidget {
  GarageServices({super.key});

  final List services = [
    {
      "icon": Icons.shopping_cart_rounded,
      "heading": "Inventory",
      "subheading": "Labour, Spare & Stock Management"
    },
    {
      "icon": Icons.track_changes_rounded,
      "heading": "Report",
      "subheading": "Track Your Workshop Performance With Revenue"
    },
    {
      "icon": Icons.analytics_outlined,
      "heading": "Analytics",
      "subheading": "Get Business Insights with Vehicle & Revenue Graphs"
    },
    {
      "icon": Icons.electric_bike,
      "heading": "Online\nGarage",
      "subheading": "Track Your Online Garage"
    },
    {
      "icon": Icons.payments_outlined,
      "heading": "Collect\nPayment",
      "subheading": "Collect Customers Payment"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        itemCount: services.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 170,
            child: Card(
              margin: const EdgeInsets.all(10.0),
              elevation: 6,
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      services[index]['icon']!,
                      size: 50.0,
                      color: Colors.yellow,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      services[index]['heading']!,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      services[index]['subheading']!,
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
