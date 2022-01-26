import 'dart:convert';

import 'package:covid19/api/globle_case_modal.dart';
import 'package:http/http.dart' as https;

String globleCase = 'https://corona.lmao.ninja/v2/all';

class GlobleCovidCase {
  Future<GlobleCaseModal> getGlobal() async {
    final response = await https.get(Uri.parse(globleCase));
    if (response.statusCode == 200) {
      return GlobleCaseModal.fromjson(jsonDecode(response.body));
    }
    return GlobleCaseModal.fromjson(jsonDecode(response.body));
  }

  Stream<GlobleCaseModal> gp() async* {
    final response = await https.get(Uri.parse(globleCase));
    if (response.statusCode == 200) {
      yield GlobleCaseModal.fromjson(jsonDecode(response.body));
    }
  }

  gFun() async {
    int i = 0;
    for (;;) {
      if (i == 10) {
        break;
      } else {
        await Future.delayed(const Duration(seconds: 1), () {
          print("kundan = $i");
          gp();
        });
      }
      i++;
    }
  }
}
