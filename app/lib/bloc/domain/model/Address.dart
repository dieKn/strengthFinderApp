
import 'package:app/bloc/infrastructure/repositoryImpl/webclient/dto/response/ZipCloudResponse.dart';

class Address {
  String name = "";
  String kana = "";
  String prefectureCode = "";


  Address(String name, String kana, String prefectureCode){
    this.name = name;
    this.kana = kana;
    this.prefectureCode = prefectureCode;
  }

  static Address toAddress(ZipCloudResponse zipCloudResponse){
    return new Address(
        zipCloudResponse.results[0].address1 + zipCloudResponse.results[0].address2 + zipCloudResponse.results[0].address3,
        zipCloudResponse.results[0].kana1 + zipCloudResponse.results[0].kana2 + zipCloudResponse.results[0].kana3,
        zipCloudResponse.results[0].zipcode);
  }

}