import 'package:app/bloc/domain/model/Address.dart';
import 'package:app/bloc/domain/repository/AddressRepository.dart';
import 'package:app/bloc/infrastructure/repositoryImpl/AddressRepositoryImpl.dart';
import 'package:flutter/material.dart';

class SearchApplication {

  final AddressRepository addressRepository = AddressRepositoryImpl();

  Future<Address> searchAddress() async{
    return addressRepository.loadAddress("1230865");
    //return new Address("埼玉県", "サイタマケン","12");
  }
}