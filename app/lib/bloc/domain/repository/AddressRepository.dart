import 'package:app/bloc/domain/model/Address.dart';

abstract class AddressRepository {

  Future<Address> loadAddress(String zipNumber);
}