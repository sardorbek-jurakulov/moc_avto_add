import "package:flutter/material.dart";
import "package:moc_avto_elon/models/advert_detail.dart";

class AdvertDetailsPage extends StatefulWidget {
  const AdvertDetailsPage({Key? key}) : super(key: key);

  @override
  State<AdvertDetailsPage> createState() => _AdvertDetailsPageState();
}

class _AdvertDetailsPageState extends State<AdvertDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double deviceStandingModeFinderWithWidth =
        MediaQuery.of(context).size.width;
    double deviceStandingModeFinderWithHeight =
        MediaQuery.of(context).size.width;
    double imageWidth = double.infinity;
    double imageHeight = deviceStandingModeFinderWithHeight * 0.3;
    if (deviceStandingModeFinderWithWidth > 290) {
      imageWidth = deviceStandingModeFinderWithWidth * 0.5;
    }
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    List<AdvertDetails> advertDetailsInfo = [
      AdvertDetails(
        args["advertTitle"],
        args["advertDescription"],
        args["advertAddress"],
        args["advertPublishedDate"],
        args["advertAddressAndPostedDate"],
        args["carBrand"],
        args["carModel"],
        args["carManufacturedDate"],
        args["carType"],
        args["carTransmissionBoxType"],
        args["carColor"],
        args["carDistanceTraveled"],
        args["engineDrivesSource"],
        args["carSeatsCount"],
        args["carPrice"],
        args["carImages"],
        args["carImagesCount"],
      ),
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(advertDetailsInfo[0].advertTitle),
        shadowColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          if (MediaQuery.of(context).size.width > 290) {
            return Column(
              children: [
                Image.asset(
                  advertDetailsInfo[index].carImages[0],
                  width: imageWidth,
                  height: imageHeight,
                ),
                Text(advertDetailsInfo[index].advertTitle),
                Text(advertDetailsInfo[index].advertDescription),
                Text(advertDetailsInfo[index].advertAddress),
                Text(advertDetailsInfo[index].advertPublishedDate),
                Text(advertDetailsInfo[index].carBrand),
                Text(advertDetailsInfo[index].carModel),
                Text(advertDetailsInfo[index].carManufacturedDate),
                Text(advertDetailsInfo[index].carType),
                Text(advertDetailsInfo[index].carTransmissionBoxType),
                Text(advertDetailsInfo[index].carColor),
                Text(advertDetailsInfo[index].carDistanceTraveled),
                Text(advertDetailsInfo[index].engineDrivesSource),
                Text(advertDetailsInfo[index].carSeatsCount),
                Text(advertDetailsInfo[index].carPrice),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Image.asset(
                  advertDetailsInfo[index].carImages[0],
                  width: imageWidth,
                  height: imageHeight,
                ),
                Text(advertDetailsInfo[index].advertTitle),
                Text(advertDetailsInfo[index].advertDescription),
                Text(advertDetailsInfo[index].advertAddress),
                Text(advertDetailsInfo[index].advertPublishedDate),
                Text(advertDetailsInfo[index].carBrand),
                Text(advertDetailsInfo[index].carModel),
                Text(advertDetailsInfo[index].carManufacturedDate),
                Text(advertDetailsInfo[index].carType),
                Text(advertDetailsInfo[index].carTransmissionBoxType),
                Text(advertDetailsInfo[index].carColor),
                Text(advertDetailsInfo[index].carDistanceTraveled),
                Text(advertDetailsInfo[index].engineDrivesSource),
                Text(advertDetailsInfo[index].carSeatsCount),
                Text(advertDetailsInfo[index].carPrice),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    ));
  }
}
