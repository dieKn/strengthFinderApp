
import 'package:app/bloc/domain/model/valueObject/enum/StrengthFeature.dart';
import 'package:app/bloc/domain/model/valueObject/enum/StrengthRegion.dart';

class Strength{
  String featureName;
  String description;
  StrengthFeature strengthFeature;
  StrengthRegion region;


  Strength(String featureName, String description, StrengthFeature strengthFeature, StrengthRegion region){
    this.featureName = featureName;
    this.description = description;
    this.strengthFeature = strengthFeature;
    this.region = region;
  }
}