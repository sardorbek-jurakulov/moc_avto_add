import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddvertsPage extends StatelessWidget {
  const AddvertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget createCarCard(
        String addImagePath,
        String addTitle,
        String addDescription,
        String addAddressAndPostedDate,
        int imagesCount) {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.2,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: double.infinity,
              child: Image.asset(addImagePath, fit: BoxFit.contain),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    addTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Text(
                    addDescription,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF444444),
                    ),
                  ),
                  Text(
                    addAddressAndPostedDate,
                    style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 13,
                    ),
                  ),
                  Row(
                    children: [
                      if (imagesCount > 0) ...[
                        const Icon(
                          Icons.photo_camera,
                          color: Color(0xFFAAAAAA),
                          size: 20,
                        ),
                        Text(imagesCount.toString(),
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 12,
                            )),
                      ] else
                        ...[],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.menu),
                  Positioned(
                    bottom: 8,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(6),
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
              Container(
                margin: const EdgeInsets.only(left: 20, right: 15),
                child: const Text(
                  "Avtoelon",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const CircleBorder(),
                  // fixedSize: const Size(5, 5),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  minimumSize: const Size(22, 22), // Set this
                  padding: EdgeInsets.zero, // and this
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const CircleBorder(),
                  // fixedSize: const Size(5, 5),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  minimumSize: const Size(22, 22), // Set this
                  padding: EdgeInsets.zero, // and this
                ),
                onPressed: () {},
                child: const Icon(
                  FontAwesomeIcons.dollarSign,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 19,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          // padding: EdgeInsets.all(10),
          children: [
            createCarCard(
                "assets/images/cobalt.jpeg",
                "Chevrolet Cobalt 2022",
                "2022\"y.,\"sedan, 2.5\"l., \"mexanika, benzin",
                "Olot, 2 Oktabr",
                1),
            const Divider(
              height: 0,
              thickness: 2,
              color: Color(0xFFEEEEEE),
            ),
            createCarCard(
                "assets/images/spark.jpeg",
                "Chevrolet Spark 2020",
                "2020\"yil.,\"Hatchback, 1.25\"l., \"avtomat, benzin/gaz",
                "Termiz, 29 fevral",
                0),
            const Divider(
              height: 0,
              thickness: 2,
              color: Color(0xFFEEEEEE),
            ),
          ],
        ),
      ),
    );
  }
}
