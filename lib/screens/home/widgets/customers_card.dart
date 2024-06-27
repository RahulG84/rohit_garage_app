import 'package:flutter/material.dart';

class CustomersCard extends StatelessWidget {
  final IconData? icon;
  final String customerCardHeading;
  final String customerCardSubHeading;
  const CustomersCard({
    super.key,
    this.icon,
    required this.customerCardHeading,
    required this.customerCardSubHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: 80,
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(1, 1),
                )
              ],
            ),
            child: Center(
                child: Icon(
              icon,
              color: Colors.black,
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  customerCardHeading,
                  // 'Today\'s Due',
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  // 'Check today\'s due',
                  customerCardSubHeading,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
