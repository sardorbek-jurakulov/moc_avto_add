import "package:flutter/material.dart";

class AdvertDetailsPage extends StatefulWidget {
  const AdvertDetailsPage({Key? key}) : super(key: key);

  @override
  State<AdvertDetailsPage> createState() => _AdvertDetailsPageState();
}

class _AdvertDetailsPageState extends State<AdvertDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ListView(),
    ));
  }
}
