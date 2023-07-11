// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget makePage(image, title, discription, page) {
  int totalPage=4;
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    child: Container(
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
          gradient: LinearGradient(stops: [
        0.1,
        0.9
      ], colors: [
        Colors.black.withOpacity(.7),
        Colors.black.withOpacity(0.3)
      ])),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  page.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "/"+totalPage.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      child: Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    Text(
                      "04",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "(2300)",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 211, 204, 204),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    discription,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                        height: 1.5),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Read More.".toUpperCase(),style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5),),
                        SizedBox(height: 20,),
              ],
            ))
          ],
        ),
      ),
    ),
  );
}
