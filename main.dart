import 'package:flutter/material.dart';
import 'package:pertemuan3/page/GetStartedPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget: doctorCard(){
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color(0xffFFFFFF)  ),
          child: Column(children: [
            Container(
              height: 220,
              width: double.infinity,
            )
          ],),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedPage(title: '',)
    );
    
    
  }
}