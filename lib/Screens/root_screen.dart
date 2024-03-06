import 'package:dating_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/logo.png",
            width: 500,
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            "Welcome",
            style: GoogleFonts.pacifico(
              fontSize: 32,
              color: const Color.fromRGBO(79, 79, 79, 1.0),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "find your perfect soulmates",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(79, 79, 79, 1.0),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 140, 82, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              backgroundColor: const Color.fromARGB(255, 140, 82, 255),
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontStyle: FontStyle.normal,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widthOfScreen * 0.3, vertical: 15),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              side: const BorderSide(
                color: Color.fromARGB(255, 140, 82, 255),
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontStyle: FontStyle.normal,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widthOfScreen * 0.25, vertical: 15),
              child: const Text(
                'Log in   ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 140, 82, 255),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Divider(),
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Divider(),
              )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.pink,
                child: Icon(
                  size: 15,
                  UniconsLine.instagram,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blueAccent,
                child: Icon(
                  size: 15,
                  UniconsLine.facebook_f,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green,
                child: Icon(
                  size: 15,
                  UniconsLine.google,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
