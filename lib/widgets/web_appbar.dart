import 'package:covid19/asset/colors.dart';
import 'package:covid19/asset/string_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(color: MyColors().appBarColor),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(StringApp.appName, style: GoogleFonts.roboto(fontSize: 41.6))
            ],
          ),
        ),
      ),
    );
  }
}
