import 'package:flutter/material.dart';
import 'menu.dart';
import 'menu_detail.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'School Menu',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.green,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'School Menu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: GridView.builder(
        itemCount: Menu.schedule.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) =>
                    MenuDetail(menu: Menu.schedule[index]),
              );
            },
            child: buildMenuCard(Menu.schedule[index]),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2.85 / 3, crossAxisCount: 2),
      ),
    );
  }

  Widget buildMenuCard(Menu menu) {
    double width = MediaQuery.of(context).size.width;

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 505 / 451,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    alignment: FractionalOffset.topCenter,
                    image: AssetImage(menu.imageUrl),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.03 * width),
            Text(
              menu.weekday,
              style: TextStyle(
                fontSize: 0.03 * width,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
