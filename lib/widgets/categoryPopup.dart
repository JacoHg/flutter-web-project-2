import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_3/mock_data/dummy_data.dart' as mock_data;
import 'package:google_fonts/google_fonts.dart';

class CategoryPopup extends StatefulWidget {
  List data;

  Function closeDialog;
  CategoryPopup({super.key, required this.closeDialog, required this.data});

  @override
  State<CategoryPopup> createState() => _CategoryPopupState();
}

class _CategoryPopupState extends State<CategoryPopup> {
  @override
  void initState() {
    print(widget.data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: screenSize.width * 0.90,
      height: screenSize.height * 0.90,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xff11998e),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Text(
                      'Items for this category',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        widget.closeDialog!();
                      },
                      child: const Text(
                        'X',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            for (var i = 0; i < widget.data.length; i++)
              screenSize.width < 800
                  ? Container(
                      height: 310,
                      width: screenSize.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: screenSize.height * 0.05,
                            left: screenSize.width * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              widget.data[i].imagePath,
                              width: 80,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    widget.data[i].name,
                                    style: GoogleFonts.poppins(
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                  Text(widget.data[i].genre,
                                      style: GoogleFonts.poppins(
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10)),
                                  Text(widget.data[i].rating,
                                      style: GoogleFonts.poppins(
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10)),
                                  Text(
                                    widget.data[i].price,
                                    style: GoogleFonts.poppins(
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width / 20,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 3, 180, 250),
                                    foregroundColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // button's shape
                                    ),
                                  ),
                                  child: const Text("Purchase"),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 3, 180, 250),
                                    elevation: 0,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // button's shape
                                    ),
                                  ),
                                  child: const Text("More info"),
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: 400,
                      width: screenSize.width,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: screenSize.height * 0.05,
                            left: screenSize.width * 0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(widget.data[i].imagePath),
                            SizedBox(
                              width: screenSize.width / 20,
                            ),
                            Container(
                              height: 400,
                              width: screenSize.width * 0.15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    widget.data[i].name,
                                    style: GoogleFonts.poppins(
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(widget.data[i].genre,
                                      style: GoogleFonts.poppins(
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.bold)),
                                  Text(widget.data[i].rating,
                                      style: GoogleFonts.poppins(
                                          letterSpacing: 3,
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    widget.data[i].price,
                                    style: GoogleFonts.poppins(
                                        letterSpacing: 3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenSize.width / 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 3, 180, 250),
                                      foregroundColor: Colors.white,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // button's shape
                                      ),
                                    ),
                                    child: const Text("Purchase"),
                                    onPressed: () {},
                                  ),
                                ),
                                Center(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 3, 180, 250),
                                      elevation: 0,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // button's shape
                                      ),
                                    ),
                                    child: const Text("More info"),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
