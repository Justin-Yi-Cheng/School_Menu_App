import 'package:flutter/material.dart';
import 'menu.dart';

class MenuDetail extends StatefulWidget {
  final Menu menu;

  const MenuDetail({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  MenuDetailState createState() {
    return MenuDetailState();
  }
}

class MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("${widget.menu.weekday} Menu -- "),
      content: Text(widget.menu.getDishes()),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
