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
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    List<AdvertDetails> advertDetailsInfo = [
      AdvertDetails(
          args["advertTitle"] ?? "",
          args["advertDescription"] ?? "",
          args["advertAddress"] ?? "",
          args["advertPublishedDate"] ?? "",
          args["carBrand"] ?? "",
          args["carModel"] ?? "",
          args["carManufacturedDate"] ?? "",
          args["carType"] ?? "",
          args["carTransmissionBoxType"] ?? "",
          args["carColor"] ?? "",
          args["carDistanceTraveled"] ?? "",
          args["engineDrivesSource"] ?? "",
          args["carSeatsCount"] ?? "",
          args["carPrice"] ?? ""),
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(advertDetailsInfo[index].advertTitle),
            ],
          );
        },
      ),
    ));
  }
}
