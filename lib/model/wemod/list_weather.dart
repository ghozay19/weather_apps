import 'package:json_annotation/json_annotation.dart';
import 'package:weather_apps/model/wemod/main_resp.dart';


part'list_weather.g.dart';

@JsonSerializable()
class ListWeather {


  @JsonKey(name: "name")
  String namaKota;
  MainResp main;


  ListWeather({this.namaKota, this.main});

  factory ListWeather.fromJson(Map<String, dynamic> json) => _$ListWeatherFromJson(json);
    Map<String, dynamic> toJson() => _$ListWeatherToJson(this);
}