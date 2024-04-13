import 'package:expense_manager_c2w/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  List maplist = [];

  List headings = ["Medicine", "Food", "Shopping", "Fuel", "Movie", "Food"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
            itemCount: headings.length,
            itemBuilder: ((context, index) {
              return SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.remove_circle,
                          color: Color.fromRGBO(204, 210, 227, 1),
                          size: 24,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              headings[index],
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 280,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more ",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("500")
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "3 June|11:50 AM",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                ),
              );
            })),
      ),
    );
  }
}
