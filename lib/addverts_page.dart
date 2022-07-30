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
        "Sedan",
        "Mexanik",
        "To'q kulrang",
        "17 km",
        "Benzin",
        "5",
        "\$12000",
        ["assets/images/cobalt.jpeg"],
        "1",
      ),
      AdvertDetails(
        "Chevrolet Spark",
        "2020\"yil.,\"Hatchback, 1.25\"l., \"avtomat, benzin/gaz",
        "Termiz viloyati, Muzrobod tumani",
        "1 Oktabr 2022 yil",
        "Termiz, 1 Oktyabr",
        "Chevrolet",
        "Spark LT",
        "2020-01-07",
        "Hatchback",
        "Mexanik",
        "Oq",
        "112 km",
        "Benzin",
        "5",
        "\$7000",
        ["assets/images/spark.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Chevrolet Onix",
        "2022\"yil.,\"sedan, 1.8\"l., \"avtomat, benzin",
        "Toshkent shahri, Mirobod tumani",
        "29 Sentabr 2022 yil",
        "Toshkent, 29 Sentabr",
        "Chevrolet",
        "Onix LTZ",
        "2022-06-25",
        "Sedan",
        "Avtomat",
        "To'q kulrang(Mokriy)",
        "17 km",
        "Benzin",
        "5",
        "\$14000",
        ["assets/images/onix.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Volkswagen Caddy",
        "2021\"yil.,\"Suv, 1.6\"l., \"mexanika, benzin/gaz",
        "Sirdaryo viloyati, Guliston shahri",
        "29 Sentabr 2022 yil",
        "Toshkent, 29 Sentabr",
        "Volkswagen",
        "Caddy econom",
        "2021-02-18",
        "Suv",
        "Mexanik",
        "Oq",
        "84 km",
        "Benzin/Gaz(Metan)",
        "5 + bord",
        "\$15500",
        ["assets/images/caddy.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Hunday Accent",
        "2022\"yil.,\"Sedan, 1.8\"l., \"avtomat, benzin",
        "Sirdaryo viloyati, Guliston shahri",
        "27 Sentabr 2022 yil",
        "Samarqand, 27 Sentabr",
        "Hunday",
        "Accent",
        "2022-03-24",
        "Sedan",
        "Mexanik",
        "Och qizil",
        "7 km",
        "Benzin",
        "5",
        "\$22000",
        ["assets/images/accent.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Chevrolet Captiva",
        "2018\"yil.,\"Cuv, 2.4\"l., \"avtomat, benzin/gaz",
        "Qashqadaryo viloyati, Qarshi shahri",
        "15 Sentabr 2022 yil",
        "Qarshi, 15 Sentabr",
        "Chevrolet",
        "Captiva 4",
        "2021-11-29",
        "Suv",
        "Avtomat",
        "Choco",
        "157 km",
        "Benzin/Gaz(Propan)",
        "8",
        "\$21000",
        ["assets/images/captiva.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Hunday Santafe",
        "2022\"yil.,\"Suv, 3.2\"l., \"avtomat, benzin",
        "Toshkent viloyati, Qibray shahri",
        "12 Sentabr 2022 yil",
        "Qibray, 12 Sentabr",
        "Hunday",
        "Santafe",
        "2022-06-01",
        "Suv",
        "Avtomat",
        "Marvarid",
        "9 km",
        "Benzin",
        "8",
        "\$44000",
        ["assets/images/santafe.jpeg"],
        "0",
      ),
      AdvertDetails(
        "Hunday Tucson",
        "2022\"yil.,\"Cuv, 3.2\"l., \"avtomat, benzin",
        "Toshkent shahri, Yakkasaroy tumani",
        "11 Sentabr 2022 yil",
        "Toshkent, 11 Sentabr",
        "Hunday",
        "Santafe",
        "2022-02-11",
        "Suv",
        "Avtomat",
        "Kulrang",
        "6 km",
        "Benzin",
        "27",
        "\$41000",
        ["assets/images/tucson.jpeg"],
        "0",
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
        body: ListView.builder(
          itemCount: advertInfo.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                createCarCard(
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
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                  color: Color(0xFFEEEEEE),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
