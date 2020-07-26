import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ["メッセージ", "メッセージ", "メッセージ", "メッセージ", "メッセージ",];
    return
      Scaffold(
          appBar: Header(),
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              if (index >= list.length) {
                list.addAll(["メッセージ","メッセージ","メッセージ","メッセージ",]);
              }
              return _messageItem(list[index]);
            },
            itemCount: 10,
          ),
      );
  }
}

Widget _messageItem(String title) {
  return Container(
    decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
    ),
    child:ListTile(
      title: Text(
        title,
        style: TextStyle(
            color:Colors.black,
            fontSize: 18.0
        ),
      ),
      onTap: () {
        print("onTap called.");
      }, // タップ
      onLongPress: () {
        print("onLongTap called.");
      }, // 長押し
    ),
  );
}

class Header extends StatelessWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(Icons.settings),
       ),
       actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed('/add_strength');
              },
           ),
         ),
       ],
       title: Text(
         'ホーム',
       ),
       backgroundColor: Colors.black87,
       centerTitle: true,
       elevation: 0.0,

    );
  }
}