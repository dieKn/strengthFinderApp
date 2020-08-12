
import 'package:app/bloc/domain/model/entity/strength.dart';
import 'package:app/bloc/domain/model/entity/user.dart';
import 'package:app/bloc/domain/repository/StrengthRepository.dart';
import 'package:app/bloc/infrastructure/repositoryImpl/StrengthRepositoryImpl.dart';

class StrengthApplication {
  final StrengthRepository strengthRepository = StrengthRepositoryImpl();

  List<Strength> getStrengths(){
    print("getStrengths() called");
    return strengthRepository.loadStrengths();
  }

  void registUserStrength(User user, Strength strength){
    print("ユーザ情報にストレングスを登録");
  }
}