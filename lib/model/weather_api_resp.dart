import 'package:json_annotation/json_annotation.dart';
import 'package:weather_apps/model/apiresponse.dart';


part'weather_api_resp.g.dart';

@JsonSerializable()
class WeatherApiResp {

  List<ApiResponse> list;


  WeatherApiResp({this.list});

  factory WeatherApiResp.fromJson(Map<String, dynamic> json) => _$WeatherApiRespFromJson(json);
    Map<String, dynamic> toJson() => _$WeatherApiRespToJson(this);
}