import 'package:expense_manager_c2w/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormFieldState> _amountkey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _desKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _dateKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _categoryKey = GlobalKey<FormFieldState>();

  final TextEditingController _amountcontroller = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();

  List maplist = [];

  List imagelist = [
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
  ];

  List headings = [
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
    "Movie",
  ];

  void showHomepageBottomSheet() {
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add Expense",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  TextFormField(
                    key: _dateKey,
                    controller: _dateController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Date";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Amount",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  TextFormField(
                    key: _amountkey,
                    controller: _amountcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Amount";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  TextFormField(
                    key: _desKey,
                    controller: _desController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Description";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
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
                      Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                  child: const Text(
                    "Submit",
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
        actions: const [
          Icon(Icons.search_sharp),
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(
        // height: 58,
        // width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: ((context, index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(imagelist[index]),
                      const SizedBox(width: 5),
                      //Image.asset("assets/homepage/medicin.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            headings[index],
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ),
                          //SizedBox(width: 50,),

                          Text(
                            "Lorem Ipsum is simply dummy text of the ",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.remove_circle_sharp,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("500"),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "3 June | 11:50 AM",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: 166,
        height: 46,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: () {
            showHomepageBottomSheet();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_circle_rounded,
                color: Colors.green,
                size: 32,
              ),
              const SizedBox(width: 10),
              Text(
                "Add Tranaction",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
