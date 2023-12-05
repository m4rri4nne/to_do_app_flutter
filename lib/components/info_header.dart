import 'package:flutter/material.dart';

class InfoHeader extends StatefulWidget {
  const InfoHeader({super.key});

  @override
  State<InfoHeader> createState() => _InfoHeaderState();
}

class _InfoHeaderState extends State<InfoHeader> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ClipOval(
              child: Image(
                image: AssetImage('images/icon.jpeg'),
                width: 80.0,
                height: 80.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
              child: Column(
                children: [
                  Text(
                    "Alicia de Paula",
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "@m4rri4nne",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                        fontFamily: "Poppins-Regular",
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
