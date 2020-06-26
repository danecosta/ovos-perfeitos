import 'package:flutter/material.dart';
import 'package:ovosperfeitos/widgets/action-buttons.widget.dart';
import 'package:ovosperfeitos/widgets/eggs.widget.dart';
import 'package:ovosperfeitos/widgets/progress.widget.dart';
import 'package:ovosperfeitos/widgets/type-buttons.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Ovos Perfeitos",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Eggs(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TypeButtons(),
            ),
            Progress(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ActionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
