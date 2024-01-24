import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var pass = "______"; // state variable

  Widget setnum(String number, String textnumber) {
    return InkWell(
      // botton
      onTap: () {
        setState(() {
          if (pass[0] == "_") {
            pass = pass.replaceRange(0, 1, number.toString());
          } else if (pass[1] == "_") {
            pass = pass.replaceRange(1, 2, number.toString());
          } else if (pass[2] == "_") {
            pass = pass.replaceRange(2, 3, number.toString());
          } else if (pass[3] == "_") {
            pass = pass.replaceRange(3, 4, number.toString());
          } else if (pass[4] == "_") {
            pass = pass.replaceRange(4, 5, number.toString());
          } else if (pass[5] == "_") {
            pass = pass.replaceRange(5, 6, number.toString());
          }
        });
      },

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            )
          ),
          child: Column(
            children: [
              Text(
                number.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20
                ),
              ),
              Text(
                textnumber,
                style: TextStyle(
                  fontSize: 10
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  

  Widget Bottondelete(String numtext, int number) {
    return InkWell(
      onTap: () {
        setState(() {
          pass = "______";
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 0,
              ),
            ),
          child: Column(
            children: [
              Text(
                "X",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var listnum = [
      setnum("1" , 'one'),setnum("2",'two'),setnum("3",'three'),
      setnum("4",'four'),setnum("5",'five'),setnum("6",'six'),
      setnum("7",'seven'),setnum("8",'eight'),setnum("9",'nine'),
      setnum("0",'zero'),
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
                Text(
                  "PIN LOGIN",
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.black
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pass,
                  //style: GoogleFonts.poppins(fontSize: 20.0),
                  style: TextStyle(fontSize: 30.0),
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
                          pass = "";
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
