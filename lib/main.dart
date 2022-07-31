import 'package:flutter/material.dart';
// import "package:moc_avto_elon/fot_test.dart";
import "package:moc_avto_elon/addverts_page.dart";
import "package:moc_avto_elon/advert_details_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => AddvertsPage(),
        "/advert/details": (context) => AdvertDetailsPage(),
      },
      // home: const AddvertsPage(),
    );
  }
}
