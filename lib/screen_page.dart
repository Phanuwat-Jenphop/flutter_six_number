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

  Widget setnum(String number, String textnum) {
    return InkWell(
      // botton
      onTap: () {
        setState(() {
          TextStyle(
            color: Colors.amber,
          );
          // int to String use .toString()
          if (pass[0] == "_") {
            pass = pass.replaceRange(0, 1, number);     
          } else if (pass[1] == "_") {
            pass = pass.replaceRange(1, 2, number);
          } else if (pass[2] == "_") {
            pass = pass.replaceRange(2, 3, number);
          } else if (pass[3] == "_") {
            pass = pass.replaceRange(3, 4, number);
          } else if (pass[4] == "_") {
            pass = pass.replaceRange(4, 5, number);
          } else if (pass[5] == "_") {
            pass = pass.replaceRange(5, 6, number);
          }
        });
      },

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 70.0,
          height: 60.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
          )),
          child: Column(
            children: [
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
              Text(
                textnum,
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonremove() {
    return InkWell(
      onTap: () {
        setState(() {
          pass = "______";
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 60,
          height: 60,
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
                  fontSize: 25,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottondelete() {
    return InkWell(
      onTap: () {
        setState(() {
          if (pass[5] != "_") {
            pass = pass.replaceRange(5, 6, "_");
          } else if (pass[4] != "_") {
            pass = pass.replaceRange(4, 5, "_");
          } else if (pass[3] != "_") {
            pass = pass.replaceRange(3, 4, "_");
          } else if (pass[2] != "_") {
            pass = pass.replaceRange(2, 3, "_");
          } else if (pass[1] != "_") {
            pass = pass.replaceRange(1, 2, "_");
          } else if (pass[0] != "_") {
            pass = pass.replaceRange(0, 1, "_");
          }
        });
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
          child: Icon(
            Icons.backspace_outlined,
            size: 28,
            color: Color.fromARGB(183, 34, 33, 33),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var listnum = [
      setnum("0", 'zero'),
      setnum("1", 'one'),
      setnum("2", 'two'),
      setnum("3", 'three'),
      setnum("4", 'four'),
      setnum("5", 'five'),
      setnum("6", 'six'),
      setnum("7", 'seven'),
      setnum("8", 'eight'),
      setnum("9", 'nine'),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [   
               
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.security,
                  size: 50.0,
                ),
                Text(
                  "PIN LOGIN" + "\n \n",
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.black
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pass + "\n \n",
                      //style: GoogleFonts.poppins(fontSize: 20.0),
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listnum[1],
                        listnum[4],
                        listnum[7],
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listnum[2],
                        listnum[5],
                        listnum[8],
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        listnum[3],
                        listnum[6],
                        listnum[9],
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Bottonremove(),
                    listnum[0],
                    Bottondelete(),
                  ],
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}
