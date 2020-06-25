import 'package:flutter/material.dart';
import 'package:ovosperfeitos/blocs/app.bloc.dart';
import 'package:ovosperfeitos/widgets/button.widget.dart';
import 'package:provider/provider.dart';

class TypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : SizedBox();
  }

  Widget buttons(bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Button(
            label: "Macio",
            selected: bloc.selected == "soft",
            callback: () {
              bloc.select("soft");
            }),
        Button(
            label: "Firme",
            selected: bloc.selected == "medium",
            callback: () {
              bloc.select("medium");
            }),
        Button(
            label: "Duro",
            selected: bloc.selected == "hard",
            callback: () {
              bloc.select("hard");
            }),
      ],
    );
  }
}
