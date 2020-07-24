
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressSearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildButton(context),
    );
  }

  Widget buildInput(BuildContext context) {
    return TextField(
      enabled: true,
      // 入力数
      maxLength: 7,
      maxLengthEnforced: false,
      obscureText: false,
      maxLines:1 ,
    );
  }

  Widget buildButton(BuildContext context){
    return RaisedButton(
      child: Text("検索"),
      color: Colors.orange,
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}