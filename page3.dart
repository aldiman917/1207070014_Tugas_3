import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan3/page/mainmenu.dart';
import 'package:pertemuan3/page/page4.dart';

class page3 extends StatelessWidget {
  const page3({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hallo Doctor',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.visibility,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainMenuPage(
                        title: '',
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 4, 255),
                    ),
                    child: Text(
                      "Login",
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
        ));
  }
}
