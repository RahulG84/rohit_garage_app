import 'package:flutter/material.dart';

class NavBarItems extends StatelessWidget {
  final IconData icon;
  final String data;
  final int index;
  final void Function()? onTap;

  const NavBarItems({
    super.key,
    required this.icon,
    required this.data,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
          Text(data,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
