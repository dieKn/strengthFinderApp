class ZipCloudResponse {
  final String message;
  final int status;
  final List<AddressInfo> results;
  ZipCloudResponse({
    this.message,
    this.results,
    this.status,
  });
  factory ZipCloudResponse.fromJson(Map<dynamic, dynamic> json) {
    return ZipCloudResponse(
      message: json['message'],
      status: json['status'],
      results: [AddressInfo.fromJson(json['results'][0])],
    );
  }

}

class AddressInfo{
  String address1;
  String address2;
  String address3;
  String kana1;
  String kana2;
  String kana3;
  String prefcode;
  String zipcode;

  AddressInfo({
    this.address1,
    this.address2,
    this.address3,
    this.kana1,
    this.kana2,
    this.kana3,
    this.prefcode,
    this.zipcode,
  });

  factory AddressInfo.fromJson(Map<dynamic, dynamic> json){
    return AddressInfo(
        address1: json['address1'],
        address2: json['address2'],
        address3: json['address3'],
        kana1: json['kana1'],
        kana2: json['kana2'],
        kana3: json['kana3'],
        prefcode: json['prefcode'],
        zipcode: json['zipcode']
    );
  }
}