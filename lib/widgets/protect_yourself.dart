import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProtectYourSelf extends StatelessWidget {
  const ProtectYourSelf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController(viewportFraction: 0.8);
    List<Map> kd = [];
    kd.add(
      {
        "iamge": "assets/images/protect-1.png",
        "title": "Wear A Face Mask",
        "peragraph":
            "Face coverings limit the volume and travel distance of expiratory droplets dispersed when talking, breathing, and coughing. A face covering without vents or holes will also filter out particles containing the virus from inhaled and exhaled air, reducing the chances of infection.",
      },
    );
    kd.add(
      {
        "iamge": "assets/images/protect-2.png",
        "title": "Wash Your Hands",
        "peragraph":
            "Make sure you wash your hands for about 20 seconds with soap and water. In the absence of soap and water, you can use an alcohol-based sanitiser, where the alcohol content is at least 60-95%.Lather and rub your hands together briskly and thoroughly.",
      },
    );
    kd.add(
      {
        "iamge": "assets/images/protect-3.png",
        "title": "Avoid Close Contact",
        "peragraph":
            "when in public places, especially if they are having symptoms such as cough, fever etc. to avoid direct droplet contact. Stay at home as much as possible. Avoid physical contact like handshakes, hand holding or hugs. Avoid touching surfaces such as table tops.",
      },
    );

    return AspectRatio(
      aspectRatio: 12 / 14,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Wrap(children: [
            Text(
              'Take Steps To ',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                textStyle: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              'Protect ',
              style: GoogleFonts.roboto(
                color: Colors.red.shade500,
                fontWeight: FontWeight.w500,
                textStyle: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              'Yourself',
              style: GoogleFonts.roboto(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                textStyle: Theme.of(context).textTheme.headline6,
              ),
            ),
          ]),
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 16 / 12,
            child: PageView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: kd.length,
              controller: _controller,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const SizedBox(height: 10),
                        AspectRatio(
                          aspectRatio: 2.5,
                          child: Image.asset(
                            kd[index]['iamge'],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          kd[index]['title'],
                          style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline6),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          kd[index]['peragraph'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
