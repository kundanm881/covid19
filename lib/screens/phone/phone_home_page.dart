import 'package:covid19/api/globle_request.dart';
import 'package:covid19/asset/colors.dart';
import 'package:covid19/asset/string_app.dart';
import 'package:covid19/screens/phone/test_page.dart';
import 'package:covid19/widgets/protect_yourself.dart';
import 'package:covid19/widgets/world_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneHomePage extends StatelessWidget {
  const PhoneHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            StringApp.appName,
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.w500),
          ),
          backgroundColor: MyColors().appBarColor,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Color(0xfff1f1f1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Text(StringApp.staysafe,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black54)),
                        // const SizedBox(height: 2),
                        Text(StringApp.intro,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54)),
                        const SizedBox(height: 8),
                        AspectRatio(
                            aspectRatio: 12 / 10,
                            child: Image.asset('assets/images/home-img.png')),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
                //--------------------------//
                // const SizedBox(height: 20),
                const WorldCard(),
                const ProtectYourSelf(),
              ],
            ),
          ),
        ));
  }
}
