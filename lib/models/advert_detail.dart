class AdvertDetails {
  String advertTitle;
  String advertDescription;
  String advertAddress;
  String advertPublishedDate;
  String carBrand;
  String carModel;
  String carManufacturedDate;
  String carType;
  String carTransmissionBoxType;
  String carColor;
  String carDistanceTraveled;
  String engineDrivesSource;
  String carSeatsCount;
  String carPrice;
  List<String> carImages;

  AdvertDetails(
      this.advertTitle,
      this.advertDescription,
      this.advertAddress,
      this.advertPublishedDate,
      this.carBrand,
      this.carModel,
      this.carManufacturedDate,
      this.carType,
      this.carTransmissionBoxType,
      this.carColor,
      this.carDistanceTraveled,
      this.engineDrivesSource,
      this.carSeatsCount,
      this.carPrice,
      this.carImages);
}
