import 'package:flutter/material.dart';

class InfoHeader extends StatefulWidget {
  const InfoHeader({super.key});

  @override
  State<InfoHeader> createState() => _InfoHeaderState();
}

class _InfoHeaderState extends State<InfoHeader> {
  void action() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const ClipOval(
              child: Image(
                image: AssetImage('images/icon.jpeg'),
                width: 80.0,
                height: 80.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 30.0),
              child: Column(
                children: [
                  const Text(
                    "Alicia de Paula",
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "@m4rri4nne",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                        fontFamily: "Poppins-Regular",
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.amber.shade900),
                    ),
                    onPressed: action,
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "Poppins-Regular",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
