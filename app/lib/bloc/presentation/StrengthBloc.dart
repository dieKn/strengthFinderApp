import 'dart:async';

import 'package:app/bloc/application/StrengthApplication.dart';
import 'package:app/bloc/domain/model/entity/strength.dart';
import 'package:app/bloc/domain/model/valueObject/enum/StrengthFeature.dart';
import 'package:app/bloc/domain/model/valueObject/enum/StrengthRegion.dart';


class StrengthBloc {

  final _strengthController = StreamController<List<Strength>>.broadcast();
  Sink<List<Strength>> get strengthSink => _strengthController.sink;
  Stream<List<Strength>> get strengthStream => _strengthController.stream;

//  final _userController = StreamController<int>.broadcast();
//  Sink<int> get userSink => _userController.sink;
//  Stream<int> get userStream => _userController.stream;

  StrengthBloc() {
    final StrengthApplication strengthApplication = StrengthApplication();
    strengthSink.add(strengthApplication.getStrengths());
  }
}