
import 'package:app/bloc/domain/model/valueObject/enum/StrengthFeature.dart';

class User{
  String userId;
  String userName;
  List<StrengthFeature> strengthFeatures;


  User(String userId, String userName, List strengthFeatures){
    this.userId = userId;
    this.userName = userName;
    this.strengthFeatures = strengthFeatures;
  }

}