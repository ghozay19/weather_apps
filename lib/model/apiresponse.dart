import 'package:json_annotation/json_annotation.dart';
import 'package:weather_apps/model/coord.dart';
import 'package:weather_apps/model/main_response.dart';


part'apiresponse.g.dart';

@JsonSerializable()
class ApiResponse {

//  Coord coord;
  MainResponse main;
  String name;


  ApiResponse({
//    this.coord,
    this.main,
    this.name});

  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);
    Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

