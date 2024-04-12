import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:expense_manager_c2w/drawer.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final GlobalKey<FormFieldState> _categoryKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _imageURLKey = GlobalKey<FormFieldState>();

  final TextEditingController _imageURLController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();

  void showCategoryBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 74,
                              width: 74,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(140, 128, 128, 0.2),
                              ),
                              child: Icon(
                                Icons.image,
                                size: 22,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Add",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Image URL",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          TextFormField(
                            key: _imageURLKey,
                            controller: _imageURLController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Image URL";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          TextFormField(
                            key: _categoryKey,
                            controller: _categoryController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Category";
                              } else {
                                return null;
                              }
                            },
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        // bool titleFlag = _amountkey.currentState!.validate();
                        // bool categoryFlag = _categorykey.currentState!.validate();
                        // bool desFlag = _desKey.currentState!.validate();
                        // bool dateFlag = _dateKey.currentState!.validate();
                        // if (titleFlag && desFlag && dateFlag) {
                        //   if (!isEdit) {
                        //     submit(false);
                        //   } else {
                        //     submit(true, toDoList1);
                        //   }
                        // }
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(14, 161, 125, 1))),
                      child: const Text(
                        "Add",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.search_sharp),
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
        ),
        padding: EdgeInsets.all(24),
        children: [
          // grid child 1
          Container(
            width: 145,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(1, 2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(214, 3, 3, 0.7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.soup_kitchen_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Food",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),

          // grid child 2
          Container(
            width: 145,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(1, 2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 148, 255, 0.7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.soup_kitchen_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Fuel",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),

          // grid child 3
          Container(
            width: 145,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(1, 2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 174, 91, 0.7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.soup_kitchen_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Medicine",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),

          // grid child 4
          Container(
            width: 145,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(1, 2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 38, 197, 0.7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.soup_kitchen_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Shopping",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 166,
        height: 46,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {
            showCategoryBottomSheet();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_rounded,
                color: Colors.green,
                size: 32,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Add Tranaction",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
