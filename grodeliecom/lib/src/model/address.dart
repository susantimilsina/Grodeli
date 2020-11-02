class Address {
  String province;
  String city;
  String district;
  String street;
  Address({this.province, this.city,this.district, this.street});

  Address.fromJSON(Map<String, dynamic> jsonMap)
      : province = jsonMap['province'].toString(),
        city = jsonMap['city'].toString(),
        district = jsonMap['district'].toString(),
        street = jsonMap['street'].toString();
}
