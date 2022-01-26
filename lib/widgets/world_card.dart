import 'package:covid19/api/globle_case_modal.dart';
import 'package:covid19/api/globle_request.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorldCard extends StatefulWidget {
  const WorldCard({Key? key}) : super(key: key);

  @override
  _WorldCardState createState() => _WorldCardState();
}

class _WorldCardState extends State<WorldCard> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<GlobleCaseModal>(
        stream: GlobleCovidCase().gp(),
        builder: (context, snapshot) {
          return AspectRatio(
            aspectRatio: 16 / 7,
            child: Container(
              // color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Card(
                child: Stack(
                  children: [
                    Align(
                        alignment: const Alignment(0, -.9),
                        child: Text(
                          'World',
                          textScaleFactor:
                              MediaQuery.of(context).size.width * .006,
                          style: GoogleFonts.roboto(
                              color: Colors.red,
                              // fontSize: 25,
                              fontWeight: FontWeight.w700),
                        )),

                    //-------------------
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Coronavirus \n Cases:",
                                    textScaleFactor:
                                        MediaQuery.of(context).size.width *
                                            .003,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 18,
                                        color: Colors.black54)),
                                Text(
                                  "${snapshot.data?.cases ?? 0}",
                                  textScaleFactor:
                                      MediaQuery.of(context).size.width * .0025,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      // fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Deaths:",
                                    textScaleFactor:
                                        MediaQuery.of(context).size.width *
                                            .003,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 18,
                                        color: Colors.black54)),
                                Text(
                                  "${snapshot.data?.deaths ?? 0}",
                                  textScaleFactor:
                                      MediaQuery.of(context).size.width * .0025,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      // fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Recovered:",
                                    textScaleFactor:
                                        MediaQuery.of(context).size.width *
                                            .003,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        // fontSize: 18,
                                        color: Colors.black54)),
                                Text(
                                  "${snapshot.data?.recovered ?? 0}",
                                  textScaleFactor:
                                      MediaQuery.of(context).size.width * .0025,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      // fontSize: 18,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------------
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                              onPressed: () {
                                // GlobleCovidCase().gp();
                                GlobleCovidCase().gFun();
                              },
                              child: const Text(
                                'More',
                                textScaleFactor: 1,
                              )),
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
