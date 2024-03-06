import 'package:dating_app/utils/constants.dart';
import 'package:dating_app/widgets/name_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import '../widgets/profile_card.dart';


class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "matches",
            style: GoogleFonts.pacifico(
              fontSize: 28,
              color: const Color.fromRGBO(79, 79, 79, 1.0),
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon(UniconsLine.setting,
                color: Color.fromARGB(255, 140, 82, 255),
                size: 30,
              ),
            ),
          ],
        ),
        body: ListView.builder(
             itemCount: profile.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileCard(
                        name: profile[index][0],
                        profilePic: profile[index][1],
                        org: profile[index][4],
                        distance: profile[index][3],
                      ),
                    ),
                  );
                },
                child: NameCard(
                  name: profile[index][0],
                  message: profile[index][2],
                  profilePic: profile[index][1],
                ),
              );
            },
        ),
      ),
    );
  }
}
