// ignore_for_file: public_member_api_docs, sort_constructors_first
class CountryV3 {
  Name? name;
  CountryV3({
    this.name,
  });

  CountryV3.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
  }
}

class Name {
  String? common;
  String? official;
  Name({
    this.common,
    this.official,
  });
  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
  }
}
