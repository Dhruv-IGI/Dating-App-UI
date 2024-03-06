import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name, required this.org, required this.distance, required this.profilePic});

  final String name;
  final String org;
  final String distance;
  final String profilePic;

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(UniconsSolid.angle_left,
              color: Color.fromARGB(255, 140, 82, 255),
              size: 30,
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox(
                      height: heightOfScreen * 0.7,
                      width: widthOfScreen *  0.9,// Image radius
                      child: Image.asset(profilePic, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: widthOfScreen /2 - 105,
                    child: GlassmorphicContainer(
                      width: 180,
                      height: 90,
                      borderRadius: 50,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.grey.withOpacity(0.2),
                        ],
                      ),
                      border: 0,
                      blur: 20,
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.grey.withOpacity(0.2),
                        ],
                      ),
                      child: Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              SizedBox(
                                  height:70,width: 70,
                                  child:ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          //border radius equal to or more than 50% of width
                                        )
                                    ),
                                    child: const Icon(UniconsSolid.multiply,
                                      color: Colors.white,
                                    ),
                                  )
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                  height:70,width: 70,
                                  child:ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          //border radius equal to or more than 50% of width
                                        )
                                    ),
                                    child: const Icon(UniconsLine.heart,
                                      color: Color.fromARGB(255, 140, 82, 255),
                                    ),
                                  )
                              )
                            ]
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0, bottom: 4.0,left:20.0 , right: 16.0),
                            child: Row(
                              children: [
                                Text(
                                  name,
                                  style: GoogleFonts.libreBaskerville(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric( horizontal: 14.0),
                            child: Row(
                              children: [
                                const Icon(
                                  size: 20,
                                  UniconsLine.map_marker,
                                  color: Colors.grey,
                                ),
                                Text(
                                  org,
                                  style: GoogleFonts.libreBaskerville(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Icon(
                        size: 20,
                        UniconsLine.arrow_growth,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:16.0),
                      child: Text(" $distance miles away",
                        style: GoogleFonts.libreBaskerville(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
