import 'package:json_annotation/json_annotation.dart';
import 'package:weather_apps/model/wemod/list_weather.dart';

part'weather_api_resp.g.dart';

@JsonSerializable()
class WeatherApiResp {


    @JsonKey(name: 'list')
    List<ListWeather> listCuaca;


    WeatherApiResp({this.listCuaca});

    factory WeatherApiResp.fromJson(Map<String, dynamic> json) => _$WeatherApiRespFromJson(json);
    Map<String, dynamic> toJson() => _$WeatherApiRespToJson(this);
}