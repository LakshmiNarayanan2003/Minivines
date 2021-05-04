import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Profile",
              style: GoogleFonts.pacifico(),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          body: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 90,
                color: Colors.blue,
              ),
              SizedBox(
                height: 15,
              ),
//              Text
//                "Sign up!",
//                style: TextStyle(fontSize: 16),
//              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 80),
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          )),
        );
      },
    );
  }
}
