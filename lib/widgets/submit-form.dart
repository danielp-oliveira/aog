import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-buttom.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasCtrl,
    @required this.alcCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: alcCtrl,
            label: "Álcool",
          ),
        ),
        LoadingButton(
          busy: busy,
          invert: false,
          func: submitFunc,
          text: "CALCULAR",
        ),
      ],
    );
  }
}
