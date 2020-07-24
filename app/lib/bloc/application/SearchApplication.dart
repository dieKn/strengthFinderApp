import 'package:app/bloc/domain/model/Address.dart';
import 'package:app/bloc/domain/repository/AddressRepository.dart';
import 'package:app/bloc/infrastructure/repositoryImpl/AddressRepositoryImpl.dart';
import 'package:flutter/material.dart';

class SearchApplication {

  final AddressRepository addressRepository = AddressRepositoryImpl();

  Future<Address> searchAddress(String zipCode) async{
    return addressRepository.loadAddress(zipCode);
    //return new Address("埼玉県", "サイタマケン","12");
  }
}