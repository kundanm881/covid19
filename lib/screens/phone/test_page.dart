import 'package:covid19/api/globle_case_modal.dart';
import 'package:covid19/api/globle_request.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // Future<GlobleCaseModal> requestFun() async {
  //   final response = await https.get(Uri.parse(globleCase));
  //   if (response.statusCode == 200) {
  //     return GlobleCaseModal.fromjson(jsonDecode(response.body));
  //   }
  //   return GlobleCaseModal.fromjson(jsonDecode(response.body));
  // }
  // Future<GlobleCaseModal> request() async {
  //   // TODO: implement initState
  //     try {
  //       final response = await https.get(Uri.parse(globleCase));
  //       if (response.statusCode == 200) {
  //         print('done');
  //         // return GlobleCaseModal.fromJson(jsonDecode(response.body));
  //         return GlobleCaseModal.fromjson(jsonDecode(response.body));
  //       } else {
  //         print('lol');
  //       }
  //     } catch (e) {
  //       print(e.toString());
  //     }

  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<GlobleCaseModal>(
        stream: GlobleCovidCase().getGlobal().asStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.cases.toString());
          }
          return const CircularProgressIndicator();
        },
      ),
    );
    //     body: FutureBuilder<GlobleCaseModal>(
    //   future: requestFun(),
    //   builder: (context, snapshot) {
    //     if (snapshot.hasData) {
    //       return Text(snapshot.data!.cases.toString());
    //     }
    //     return const CircularProgressIndicator();
    //   },
    // ));
  }
}
