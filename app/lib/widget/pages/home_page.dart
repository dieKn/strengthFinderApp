import 'package:app/bloc/domain/model/entity/strength.dart';
import 'package:app/bloc/presentation/StrengthBlocProvider.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = StrengthBlocProvider.of(context).bloc;
    return
      Scaffold(
          appBar: Header(),
          body: StreamBuilder<List<Strength>>(
            stream: bloc.strengthStream,
            builder: (context, strength) {
              print(strength);
              return _listView(context, strength);
            }
          ),
      );
  }
}


Widget _listView(context, strength){
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      if(!strength.hasData) {
        print("object is null***");
        print(strength);
        return _messageItem("取得中", context);
      }
        return _messageItem(strength.data[0].featureName, context);
    },
    itemCount: 3,
  );
}


Widget _messageItem(String title, context) {
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
        Navigator.of(context).pushReplacementNamed("/add_strength");
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