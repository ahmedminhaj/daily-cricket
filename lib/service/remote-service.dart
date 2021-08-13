
import 'package:daily_cricket/model/match.dart';
import 'package:http/http.dart' as http;

class RemoteService{
  static var client = http.Client();

  static Future<Match> fetchMatchs() async {
    var response = await client.get("https://rest.entitysport.com/v2/matches/?status=3&token=437214169d9be2a73e91d22f76f68b52");
    if(response.statusCode == 200){
      var jsonData = response.body;
      return matchFromJson(jsonData);
    }else{
      print(response.statusCode);
      return null;
    }

  }
}