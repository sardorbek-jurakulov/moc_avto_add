import "package:flutter/material.dart";

class AddvertsPage extends StatelessWidget {
  const AddvertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Row(children: [
          Stack(
            clipBehavior: Clip.none,
            // fit: StackFit.expand,
            // clipBehavior: Clip.antiAliasWithSaveLayer,
            // overflow: Overflow.visible,
            children: [
              Icon(Icons.menu),
              Positioned(
                bottom: 8,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "1",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text("Avtoelon"),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ])),
        body: ListView(),
      ),
    );
  }
}
