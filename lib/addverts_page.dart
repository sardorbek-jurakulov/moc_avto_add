import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddvertsPage extends StatelessWidget {
  const AddvertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.all(10),
          children: [
            createCarCard(),
          ],
        ),
      ),
    );
  }

  Widget createCarCard(String addImagePath, String addTitle,
      String addDescription, String addAddressAndPostedDate, int imagesCount) {
    return Row(
      children: [
        Container(
          child: Image.asset(addImagePath),
        ),
        Column(
          children: [
            Text(
              addTitle,
            ),
            Text(
              addDescription,
            ),
            Text(
              addAddressAndPostedDate,
            ),
            Row(
              children: [
                if (imagesCount > 0) ...[
                  Icon(Icons.photo_camera),
                  Text(imagesCount.toString()),
                ] else
                  ...[],
              ],
            ),
          ],
        ),
      ],
    );
  }
}
