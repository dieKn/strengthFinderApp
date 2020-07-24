
import 'package:app/bloc/domain/model/Address.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressList extends StatefulWidget {
  List<Address> addressList = [];
  AddressList({this.addressList}): super();

  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  var _addresses = <Address>[];

  void _setAddressList(){
    setState(() {
      this._addresses = widget.addressList;
    });
  }

  Widget build(BuildContext context) {
    return (_addresses == null || _addresses.length == 0)? Text("未検索") :
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_addresses[index].prefectureCode + " "
                + _addresses[index].name + " "
                + _addresses[index].kana),
          );
        },
        itemCount: widget.addressList.length
    );
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setAddressList();
    print("test3");
  }
}