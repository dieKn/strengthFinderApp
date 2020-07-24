import 'package:app/bloc/domain/model/Address.dart';
import 'package:app/bloc/domain/repository/AddressRepository.dart';
import 'package:app/bloc/infrastructure/repositoryImpl/webclient/dto/response/ZipCloudResponse.dart';
import 'package:app/bloc/infrastructure/repositoryImpl/webclient/zipCloudClient.dart';

class AddressRepositoryImpl extends AddressRepository{

//  final ZipCloudClient zipCloudClient = ZipCloudClient();

  @override
  Future<Address> loadAddress(String zipNumber){
    return ZipCloudClient.fetchAddress(zipNumber).then((value) => Address.toAddress(value));
  }
}