import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _num = ""; // state variable

  Widget buildItem(String number, String title) {
    return InkWell(
      // botton
      onTap: () {
        setState(() {
          _num = number;
        });
      },

      child: Container(
        width: 100.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  buildNumberWithBackground({
    required String text,
  }) {
    return Container(
      //alignment: Alignment.centerRight,
      //width: 200.0,  // ปรับความยืด

      padding: EdgeInsets.all(20.0),
      child: Text(text),
    );
  }

  buildUnder(String number,){

    return Scaffold(
      body: Container(
        child: Row(
          children: [
           
                  
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var listnum = [
      buildItem("1" , 'one'),buildItem("2",'two'),buildItem("3",'three'),
      buildItem("4",'four'),buildItem("5",'five'),buildItem("6",'six'),
      buildItem("7",'seven'),buildItem("8",'eight'),buildItem("9",'nine'),
      buildItem("0",'zero'),
    ];
    
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.security,
                  size: 50.0,
                ),
                Text("PIN LOGIN")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "------",
                  style: GoogleFonts.poppins(fontSize: 20.0),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.greenAccent,
                        shadowColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        minimumSize: Size(82.0, 64.0), //////// HERE
                      ),
                      onPressed: () {
                        setState(() {
                          _num = "";
                        });
                      },
                      child: Expanded(
                        child: Text(
                          '1',
                          style: GoogleFonts.poppins(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          
                        ),
                       
                      ),
                      
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '2',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'two',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '3',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'three',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.0,
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '4',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'four',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '5',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'five',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '6',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'six',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '7',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'seven',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '8',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'eight',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '9',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'nine',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.greenAccent,
                        shadowColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                        minimumSize: Size(82.0, 64.0), //////// HERE
                      ),
                      onPressed: () {
                        setState(() {
                          _num = "";
                        });
                      },
                      child: Text(
                        'X',
                        style: GoogleFonts.poppins(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                    // Container(
                    //   width: 75.0,
                    //   height: 60.0,
                    //   alignment: Alignment.center,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     border: Border.all(
                    //       width: 1.0,
                    //       color: Colors.white,
                    //     ),
                    //     //borderRadius: BorderRadius.circular(10.0),
                    //   ),

                    // ), SizedBox(width: 15.0 ,height: 15.0,),

                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(2.0)),
                          Text(
                            '0',
                            style: GoogleFonts.poppins(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'zero',
                            style: GoogleFonts.poppins(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),

                    Container(
                      width: 75.0,
                      height: 60.0,
                      //padding: EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.white,
                        ),
                        //borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.backspace_outlined,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                      height: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}