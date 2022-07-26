import "package:flutter/material.dart";

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(width: 150, height: 150, color: Colors.yellow),
                Container(width: 150, height: 28, color: Colors.transparent),
              ],
            ),
            Positioned(
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  print('FAB tapped!');
                },
                color: Colors.blueGrey,
              ),
              // right: 0,
              left: 10,
              // top: 10,
              bottom: 10,
            ),
          ],
        ));
  }
}
