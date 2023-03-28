// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/page/mainmenu.dart';
import 'package:pertemuan3/page/page3.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/bg.png")))),
        Container(
          width: double.infinity,
          height: 444,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0)
              ],
            ),
          ),
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                Text('Treat Patient Like A Queen',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFffffff),
                      fontSize: 24,
                    )),
                
                Text(
                  "Explore the best our service with\nprofessional specialist doctor",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFFffffff),
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const page3(
                          title: '',
                        ),
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 14),
                      decoration: const BoxDecoration(
                        color: Color(0xFFffffff),
                      ),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        )
      ],
    ));
  }
}
