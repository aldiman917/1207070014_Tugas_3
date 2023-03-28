import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFD94EE),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/ 2.1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage(
                    "assets/doc2.png",
                  ),
                  fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
              ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Patient",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 0, 255),
                      ),
                      ),
                      SizedBox(height: 8),
                        Text(
                          "1.8k",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 38, 0, 255),
                          ),
                        )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Experience ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 0, 255),
                      ),
                      ),
                      SizedBox(height: 8),
                        Text(
                          "15 years",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 38, 0, 255),
                          ),
                        )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rating",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 0, 255),
                      ),
                      ),
                      SizedBox(height: 8),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 38, 0, 255),
                          ),
                        )
                    ],
                  ),
                ],
              ),
              
            )
          ],
        )),
    );
  }
}