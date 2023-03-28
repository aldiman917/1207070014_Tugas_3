import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/page/page3.dart';
import 'package:pertemuan3/page/page4.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    Widget:
    doctorCard(
      String img,
      String name,
      String role,
    ) {
      return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: const Color(0xffFFFFFF)),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(img
                              //"assets/doc2.png"
                              )))),
              SizedBox(
                height: 6,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/star1.png",
                                  ))),
                        ),
                        Text(
                          '4.8',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color(0xff308CF8),
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color(0xff0D2841),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          role,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xff0D2841),
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ));
    }

    return Scaffold(
      backgroundColor: const Color(0xfffafafafa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, \nAldiman',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: const Color(0Xff002841),
                        fontWeight: FontWeight.w500,
                      ),
                      // ignore: prefer_const_constructors
                    ),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
                Text(
                  'Stay Healthy With Our Specialis Doctor',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: const Color(0Xff002841),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                    width: 76,
                    height: 76,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/poto.png")))),
                doctorCard("assets/doc2.png", "dr. Mawar N",
                    "Spesialis Penyakit Dalam"),
                doctorCard("assets/doc1.png", "dr. Zizah Ayuningsih",
                    "Spesialis Penyakit Kulit"),
                doctorCard("assets/doc2.png", "dr. Mawar N",
                    "Spesialis Penyakit Dalam"),
                doctorCard("assets/doc1.png", "dr. Zizah Ayuningsih",
                    "Spesialis Penyakit Kulit"),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const page4(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
