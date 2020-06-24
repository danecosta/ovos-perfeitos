import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:ovosperfeitos/pages/home.page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    delay(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: FlareActor(
              "assets/animations/egg-cooking.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              isPaused: false,
              animation: 'start',
            ),
          ),
          Text(
            "Ovos Perfeitos",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Future delay(context) async {
    await new Future.delayed(
      new Duration(milliseconds: 3000),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }
}
