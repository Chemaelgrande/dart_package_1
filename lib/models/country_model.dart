// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_package_1/models/name_country.dart';

class CountryV3 {
  Name? name;
  CountryV3({
    this.name,
  });

  CountryV3.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
  }
}
