import 'package:covid19/api/globle_request.dart';
import 'package:flutter/material.dart';
import 'screens/phone/phone_home_page.dart';
import 'screens/responsve/responsve.dart';
import 'screens/web/web_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Responsive(phone: PhoneHomePage(), web: WebHomePage()),
    );
  }
}

// class KK extends StatefulWidget {
//   const KK({Key? key}) : super(key: key);

//   @override
//   _KKState createState() => _KKState();
// }

// class _KKState extends State<KK> {
//   final controler = PageController(
//     initialPage: 0,
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//       children: [
//         PageView(
//           controller: controler,
//           children: [
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.yellow,
//             ),
//             Container(
//               color: Colors.blue,
//             )
//           ],
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           heightFactor: 10.0,
//           child: Container(
//             height: 20,
//             color: Colors.red,
//           ),
//         )
//       ],
//     ));
//   }
// }
