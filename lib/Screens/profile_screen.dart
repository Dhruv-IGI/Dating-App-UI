import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 230, 230),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              UniconsSolid.angle_left,
              color: Colors.teal,
              size: 30,
            ),
          ),
          title: Center(
            child: Text(
              "Profile",
              style: GoogleFonts.pacifico(
                fontSize: 28,
                color: const Color.fromRGBO(79, 79, 79, 1.0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                UniconsLine.setting,
                color: Colors.teal,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: heightOfScreen * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0.0),
                    bottomRight: Radius.circular(200.0),
                    topLeft: Radius.circular(0.0),
                    bottomLeft: Radius.circular(200.0)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: widthOfScreen * 0.3,
                    backgroundImage: const AssetImage("assets/profile/p1.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(14),
                            backgroundColor: Colors.white, // <-- Button color
                            foregroundColor: Colors.red, // <-- Splash color
                          ),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.teal,
                            size: 30,
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(14),
                            backgroundColor: Colors.white, // <-- Button color
                            foregroundColor: Colors.red, // <-- Splash color
                          ),
                          child: const Icon(
                            Icons.login_rounded,
                            color: Colors.teal,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                          backgroundColor: Colors.teal, // <-- Button color
                          foregroundColor: Colors.white, // <-- Splash color
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: heightOfScreen * 0.05,
            ),
            const Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
              Icon(
                Icons.bolt,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'Get matches Faster',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ]),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Boost your profile every week",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: const Color.fromRGBO(250,250,250,1),
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                ),
              ),
              onPressed: (){},
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: widthOfScreen * 0.2, vertical: 15),
                child: const Text(
                  'Get Binge Plus',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
