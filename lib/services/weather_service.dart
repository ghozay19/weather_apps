import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_apps/model/weather_api_resp.dart';


class WeatherService {




  Future<WeatherApiResp> getWeather(String idKota) async{

    String url = 'http://api.openweathermap.org/data/2.5/group?id=$idKota&units=metric&appid=38e9f44949c479eb54b2c3c68f59d133';

    try{


      final response = await http.get(url);

      if (response.statusCode == 200) {
        Map json = jsonDecode(response.body);

        WeatherApiResp weatherResponse = WeatherApiResp.fromJson(json);
        return weatherResponse;
      }  else {
        print('failed');
      }

    }catch(e){

      print(e.toString());
    }


  }


}