import 'dart:convert';

import 'package:dart_package_1/models/person_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqresApi {
  PersonModel personModel = PersonModel();
  Future<PersonModel> getReqRespServiceListUsers() async {
    // String url = "https://reqres.in/api/users?page=2";

    var url = Uri.parse("https://reqres.in/api/users?page=2");
    var httpsUri = Uri(
        scheme: 'https',
        host: 'reqres.in',
        path: '/api/users',
        queryParameters: {'page': '2'});

    print(url);
    print(httpsUri);

    var httpsUriPerson = Uri(
      scheme: 'https',
      host: 'reqres.in',
      path: '/api/users/2',
    );

    await http.get(httpsUriPerson).then((response) {
      print(response);
      print(response.body);
      print(jsonDecode(response.body));
      Map<String, dynamic> resultPerson = jsonDecode(response.body);
      print(resultPerson);
      print(resultPerson["data"]);

      //personModel = PersonModel.fromJson(jsonDecode(response.body));
      personModel = PersonModel.fromJson(resultPerson["data"]);
      print(personModel.id);
    }).catchError((err) {
      print(err);
    });

    return personModel;
  }
}
