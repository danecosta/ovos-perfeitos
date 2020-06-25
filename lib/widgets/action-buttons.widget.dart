import 'package:flutter/material.dart';
import 'package:ovosperfeitos/blocs/app.bloc.dart';
import 'package:ovosperfeitos/widgets/button.widget.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case "stopped":
        {
          return Button(
            label: "INICIAR",
            selected: true,
            callback: bloc.start,
          );
        }

      case "cooking":
        {
          return Button(
            label: "PARAR",
            selected: true,
            callback: bloc.stop,
          );
        }

      case "done":
        {
          return Button(
            label: "TUDO PRONTO",
            selected: true,
            callback: bloc.reset,
          );
        }

      default:
        {
          return Button(
            label: "INICIAR",
            selected: true,
            callback: bloc.start,
          );
        }
    }
  }
}
