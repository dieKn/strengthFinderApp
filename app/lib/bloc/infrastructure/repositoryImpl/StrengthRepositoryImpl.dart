
import 'package:app/bloc/domain/model/entity/strength.dart';
import 'package:app/bloc/domain/model/valueObject/enum/StrengthFeature.dart';
import 'package:app/bloc/domain/model/valueObject/enum/StrengthRegion.dart';
import 'package:app/bloc/domain/repository/StrengthRepository.dart';

class StrengthRepositoryImpl extends StrengthRepository{

  @override
  List<Strength> loadStrengths(){
    Strength strength = Strength("戦略性",
        "「戦略性」の資質が高い人は、目的に向かうための選択肢を想定することができます。いかなる想定に直面しようとも、適切なパターンと問題点を直ちに予測することができます。",
        StrengthFeature.Strategic,
        StrengthRegion.Thinking);
    return [strength];
  }

  @override
  void registStrength(Strength strength) {
    // TODO: 不要の可能性あり
  }
}