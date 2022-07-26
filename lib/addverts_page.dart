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
            children: [
              Icon(Icons.menu),
              Container(
                padding: EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  "1",
                  style: TextStyle(
                    fontSize: 8,
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
