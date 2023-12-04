import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/components/tasklist.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  void action() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
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
          ),
          TaskList(),
        ],
      ),
    );
  }
}
