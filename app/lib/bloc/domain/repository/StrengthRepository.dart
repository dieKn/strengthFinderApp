
import 'package:app/bloc/domain/model/entity/strength.dart';

abstract class StrengthRepository {
  List<Strength> loadStrengths();
  void registStrength(Strength strength);
}