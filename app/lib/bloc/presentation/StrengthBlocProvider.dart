import 'package:flutter/material.dart';

import 'StrengthBloc.dart';

class StrengthBlocProvider extends InheritedWidget {
  const StrengthBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  StrengthBloc get bloc => StrengthBloc();

  @override
  bool updateShouldNotify(_) => true;

  static StrengthBlocProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StrengthBlocProvider>();
  }
}