import 'package:json_annotation/json_annotation.dart';


part'main_response.g.dart';

@JsonSerializable()
class MainResponse {


  double temp;
  double pressure;
  double humidity;
  double temp_min;
  double temp_max;


  MainResponse(this.temp, this.pressure, this.humidity, this.temp_min,
      this.temp_max);

  factory MainResponse.fromJson(Map<String, dynamic> json) => _$MainResponseFromJson(json);
    Map<String, dynamic> toJson() => _$MainResponseToJson(this);
}