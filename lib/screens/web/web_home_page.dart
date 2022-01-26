import 'package:covid19/widgets/web_appbar.dart';
import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        child: WebAppBar(),
        preferredSize: Size.fromHeight(70.0),
      ),
      body: Center(
        child: Text('web'),
      ),
    );
  }
}
