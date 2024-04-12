import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:expense_manager_c2w/categories.dart';
import 'package:expense_manager_c2w/homepage.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 216,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expense Manager",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    Text(
                      "Saves all your Transaction",
                      // maplist[index].name,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.shopify_sharp,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Transaction",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.pie_chart_rounded,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Graphs",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CategoriesScreen(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_circle_right_sharp,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.delete,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Trash",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 18),
                      height: 40,
                      width: 184,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "About us",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
