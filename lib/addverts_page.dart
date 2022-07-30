import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:moc_avto_elon/models/advert_detail.dart";

class AddvertsPage extends StatelessWidget {
  const AddvertsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceMode = MediaQuery.of(context).size.height * 0.2;

    if (MediaQuery.of(context).size.height < 400) {
      deviceMode = MediaQuery.of(context).size.height * 0.4;
    }

    List<AdvertDetails> advertInfo = [
      AdvertDetails(
        "Chevrolet Cobalt",
        "2022\"y.,\"sedan, 2.5\"l., \"mexanika, benzin",
        "Buxro viloyati, Olot tumani",
        "2 Oktabr 2022 yil",
        "Olot, 2 Oktabr",
        "Chevrolet",
        "Cobalt LTZ",
        "2022-03-22",
        "Cedan",
        "Mexanik",
        "Oq",
        "17 km",
        "Benzin",
        "5",
        "\$12000",
        ["assets/images/cobalt.jpeg"],
        "1",
      ),
    ];

    Widget createCarCard(
      String advertTitle,
      String advertDescription,
      String advertAddress,
      String advertPublishedDate,
      String advertAddressAndPostedDate,
      String carBrand,
      String carModel,
      String carManufacturedDate,
      String carType,
      String carTransmissionBoxType,
      String carColor,
      String carDistanceTraveled,
      String engineDrivesSource,
      String carSeatsCount,
      String carPrice,
      List<String> carImages,
      String carImagesCount,
    ) {
      return InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            "/advert/details",
            arguments: {
              "advertTitle": advertTitle,
              "advertDescription": advertDescription,
              "advertAddress": advertAddress,
              "advertPublishedDate": advertPublishedDate,
              "advertAddressAndPostedDate": advertAddressAndPostedDate,
              "carBrand": carBrand,
              "carModel": carModel,
              "carManufacturedDate": carManufacturedDate,
              "carType": carType,
              "carTransmissionBoxType": carTransmissionBoxType,
              "carColor": carColor,
              "carDistanceTraveled": carDistanceTraveled,
              "engineDrivesSource": engineDrivesSource,
              "carSeatsCount": carSeatsCount,
              "carPrice": carPrice,
              "carImages": carImages,
              "carImagesCount": carImagesCount,
            },
          );
        },
        child: Container(
          width: double.infinity,
          // height: MediaQuery.of(context).size.height * 0.2,
          height: deviceMode,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: double.infinity,
                child: Image.asset(carImages[0], fit: BoxFit.cover),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        advertTitle,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF444444),
                        ),
                      ),
                      Text(
                        advertDescription,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF444444),
                        ),
                      ),
                      Text(
                        advertAddressAndPostedDate,
                        style: const TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 13,
                        ),
                      ),
                      Row(
                        children: [
                          if (int.parse(carImagesCount) > 0) ...[
                            const Icon(
                              Icons.photo_camera,
                              color: Color(0xFFAAAAAA),
                              size: 20,
                            ),
                            Text(carImagesCount.toString(),
                                style: const TextStyle(
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
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
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
        // body: ListView(
        //   children: [
        //     createCarCard(
        //       "assets/images/cobalt.jpeg",
        //       "Chevrolet Cobalt",
        //       "2022\"y.,\"sedan, 2.5\"l., \"mexanika, benzin",
        //       "Olot, 2 Oktabr",
        //       "1",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFDDDDDD),
        //     ),
        //     createCarCard(
        //       "assets/images/spark.jpeg",
        //       "Chevrolet Spark",
        //       "2020\"yil.,\"Hatchback, 1.25\"l., \"avtomat, benzin/gaz",
        //       "Termiz, 1 Oktyabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/onix.jpeg",
        //       "Chevrolet Onix",
        //       "2022\"yil.,\"sedan, 1.8\"l., \"avtomat, benzin",
        //       "Toshkent, 29 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/caddy.jpeg",
        //       "Volkswagen Caddy",
        //       "2021\"yil.,\"Suv, 1.6\"l., \"mexanika, benzin/gaz",
        //       "Guliston, 29 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/accent.jpeg",
        //       "Hunday Accent",
        //       "2022\"yil.,\"Sedan, 1.8\"l., \"avtomat, benzin",
        //       "Samarqand, 27 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/captiva.jpeg",
        //       "Chevrolet Captiva",
        //       "2018\"yil.,\"Cuv, 2.4\"l., \"avtomat, benzin/gaz",
        //       "Qarshi, 15 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/santafe.jpeg",
        //       "Hunday Santafe",
        //       "2022\"yil.,\"Cuv, 3.2\"l., \"avtomat, benzin",
        //       "Qibray, 12 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //     createCarCard(
        //       "assets/images/tucson.jpeg",
        //       "Hunday Tucson",
        //       "2022\"yil.,\"Cuv, 3.2\"l., \"avtomat, benzin",
        //       "Toshkent, 11 Sentabr",
        //       "0",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //       "",
        //     ),
        //     const Divider(
        //       height: 5,
        //       thickness: 2,
        //       color: Color(0xFFEEEEEE),
        //     ),
        //   ],
        // ),
        body: ListView.builder(
            itemCount: advertInfo.length,
            itemBuilder: (BuildContext context, int index) {
              return createCarCard(
                advertInfo[index].advertTitle,
                advertInfo[index].advertDescription,
                advertInfo[index].advertAddress,
                advertInfo[index].advertPublishedDate,
                advertInfo[index].advertAddressAndPostedDate,
                advertInfo[index].carBrand,
                advertInfo[index].carModel,
                advertInfo[index].carManufacturedDate,
                advertInfo[index].carType,
                advertInfo[index].carTransmissionBoxType,
                advertInfo[index].carColor,
                advertInfo[index].carDistanceTraveled,
                advertInfo[index].engineDrivesSource,
                advertInfo[index].carSeatsCount,
                advertInfo[index].carPrice,
                advertInfo[index].carImages,
                advertInfo[index].carImagesCount,
              );
            }),
      ),
    );
  }
}
