import 'package:app/bloc/application/SearchApplication.dart';
import 'package:app/bloc/domain/model/Address.dart';
import 'package:app/widget/templates/AddressList.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(AddressSearchApp());
}

class AddressSearchApp extends StatelessWidget{
  final SearchApplication searchApplication = SearchApplication();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Address',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(searchApplication: searchApplication),
    );
  }
}

class MainPage extends StatefulWidget {
  final SearchApplication searchApplication;
  List<Address> addresses = [];

  MainPage({this.searchApplication});

  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {

//  final _formKey = GlobalKey<FormState>();
  final inputController = TextEditingController();

  void search() async{
    Address result = await widget.searchApplication.searchAddress(inputController.text);
    setState(() {
      widget.addresses.add(result);
    });
    print("検索結果");
    for (Address address in widget.addresses) {
      print(address.name);
    }
  }

  @override
  void didUpdateWidget(Widget oldWidget){
    super.didUpdateWidget(oldWidget);
    print("test2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main画面のタイトルバー'),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            TextField(
              controller: inputController,
              enabled: true,
              // 入力数
              maxLength: 7,
              maxLengthEnforced: false,
              obscureText: false,
              maxLines:1 ,
            ),
            RaisedButton(
              child: Text("検索"),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: search,
            ),
            AddressList(addressList: widget.addresses),
          ],
        ),
      ),
    );
  }
}
