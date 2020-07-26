import 'package:flutter/material.dart';

class AddStrengthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(),
        body: SingleChildScrollView(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Column(
                children: <Widget>[
                  Center(child: Text('Strength①'),),
                  Center(child:
                    TextField(
                      enabled: true,
                      // 入力数
                      maxLength: 10,
                      maxLengthEnforced: false,
                      style: TextStyle(color: Colors.black),
                      obscureText: false,
                      maxLines:1 ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Strength①',
                      ),
                    ),
                  ),
                  Center(child: Text('Strength②'),),
                  Center(child:
                  TextField(
                    enabled: true,
                    // 入力数
                    maxLength: 10,
                    maxLengthEnforced: false,
                    style: TextStyle(color: Colors.black),
                    obscureText: false,
                    maxLines:1 ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Strength②',
                    ),
                  ),
                  ),
                  Center(child: Text('Strength③'),),
                  Center(child:
                  TextField(
                    enabled: true,
                    // 入力数
                    maxLength: 10,
                    maxLengthEnforced: false,
                    style: TextStyle(color: Colors.black),
                    obscureText: false,
                    maxLines:1 ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Strength③',
                    ),
                  ),
                  ),
                  Center(child: Text('Strength④'),),
                  Center(child:
                    TextField(
                      enabled: true,
                      // 入力数
                      maxLength: 10,
                      maxLengthEnforced: false,
                      style: TextStyle(color: Colors.black),
                      obscureText: false,
                      maxLines:1 ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Strength ④',
                      ),
                    ),
                  ),
                  Center(child: Text('Strength⑤'),),
                  Center(child:
                  TextField(
                    enabled: true,
                    // 入力数
                    maxLength: 10,
                    maxLengthEnforced: false,
                    style: TextStyle(color: Colors.black),
                    obscureText: false,
                    maxLines:1 ,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Strength⑤',
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}

class Header extends StatelessWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
        ),
      ),
      actions: [

      ],
      title: Text(
        'Add Strength',
      ),
      backgroundColor: Colors.black87,
      centerTitle: true,
      elevation: 0.0,

    );
  }
}