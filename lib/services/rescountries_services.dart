import 'dart:convert';

import 'package:dart_package_1/models/country_model.dart';
import 'package:http/http.dart' as http;

class ResCountriesServicesV3 {
  void getCountries() {
    var url = Uri.parse("https://restcountries.com/v3/all");

    http.get(url).then((response) {
      // DECODIFICAR EL BODY
      final List<dynamic> bodyDecoded = jsonDecode(response.body);

      //ITERABLE DE PAISES
      final paises = bodyDecoded.map((element) {
        try {
          return CountryV3.fromJson(element);
        } catch (e) {
          return CountryV3();
        }
      });

      //LISTA DE PAISES
      final List<CountryV3> listPaises = paises.toList();
      for (var i = 0; i < listPaises.length; i++) {
        if (listPaises[i].name != null) {
          print(listPaises[i].name!.common);
        }
      }
    });
  }
}
