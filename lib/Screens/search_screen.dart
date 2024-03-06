import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../widgets/name_card.dart';
import '../widgets/profile_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool isShowUsers = false;

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        appBar: isShowUsers
            ? AppBar(
                backgroundColor: Colors.white,
                title: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _searchController.clear();
                        setState(() {
                          isShowUsers = false;
                        });
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          controller: _searchController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: 'Search for a user',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.none),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 230, 230),
                          ),
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.none),
                          onFieldSubmitted: (String _) {
                            setState(() {
                              isShowUsers = true;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : AppBar(
                backgroundColor: Colors.white,
                title: SizedBox(
                  height: 40,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    controller: _searchController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: 'Search for a user',
                      hintStyle: const TextStyle(
                          color: Colors.grey, decoration: TextDecoration.none),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230),
                            width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230),
                            width: 2),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230),
                            width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 230, 230, 230),
                            width: 2),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 230, 230, 230),
                    ),
                    style: const TextStyle(
                        color: Colors.grey, decoration: TextDecoration.none),
                    onFieldSubmitted: (String _) {
                      setState(() {
                        isShowUsers = true;
                      });
                    },
                  ),
                ),
              ),
        body: isShowUsers
            ? Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Not yet here ?",
                          style: GoogleFonts.libreBaskerville(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Add them Now!",
                          style: GoogleFonts.libreBaskerville(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: width * 0.8,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          controller: _nameController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: 'Enter a name',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.none),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 230, 230),
                          ),
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.none),
                          onFieldSubmitted: (String _) {
                            setState(() {
                              isShowUsers = true;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: width * 0.8,
                        child: TextFormField(
                          textAlign: TextAlign.start,
                          controller: _phoneController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: 'Enter a phone number',
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.none),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230),
                                  width: 2),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 230, 230),
                          ),
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.none),
                          onFieldSubmitted: (String _) {
                            setState(() {
                              isShowUsers = true;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor:Colors.orange,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          onPressed: () {
                               setState(() {
                                 isShowUsers = false;
                               });
                                 _nameController.clear();
                                  _phoneController.clear();
                                  _searchController.clear();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Notify Them',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                child: ListView.builder(
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
      ),
    );
  }
}
