import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkUtil {


  Future<dynamic> postRequest(String url, _body) async {
    var body = json.encode(_body);
    print("body in post $_body");
    Map<String, String> headers = {
      'Content-type': 'application/json',
    };
    var response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400 || json == null) {
      print("error $response");
      throw new Exception("Error while fetching data");
    }

    final parsed = json.decode(response.body);
    print("parsed $parsed");
    return parsed;
  }
}